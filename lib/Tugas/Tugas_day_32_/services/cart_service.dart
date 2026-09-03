import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/Tugas/Tugas_day_32_/model/cart_item_model.dart';
import 'package:flutter_application_1/Tugas/Tugas_day_32_/model/post_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartService extends ChangeNotifier {
  static final CartService instance = CartService._internal();

  factory CartService() => instance;

  static const String _prefsKey = 'cart_items_day_32';

  final List<CartItem> _items = [];

  CartService._internal() {
    _loadFromPrefs();
  }

  /// Daftar item di dalam keranjang
  List<CartItem> get items => List.unmodifiable(_items);

  /// Jumlah total kuantitas seluruh produk di keranjang
  int get totalItemCount => _items.fold(0, (sum, item) => sum + item.quantity);

  /// Jumlah ragam produk unik di keranjang
  int get uniqueItemCount => _items.length;

  /// Cek apakah keranjang kosong
  bool get isEmpty => _items.isEmpty;

  /// Total harga yang harus dibayar setelah diskon
  double get totalPrice =>
      _items.fold(0.0, (sum, item) => sum + item.totalPrice);

  /// Total harga asli sebelum diskon
  double get totalOriginalPrice =>
      _items.fold(0.0, (sum, item) => sum + item.totalOriginalPrice);

  /// Total penghematan dari potongan diskon
  double get totalSavings =>
      _items.fold(0.0, (sum, item) => sum + item.totalSavings);

  /// Muat keranjang dari penyimpanan lokal SharedPreferences
  Future<void> _loadFromPrefs() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? data = prefs.getString(_prefsKey);
      if (data != null && data.isNotEmpty) {
        final List<dynamic> decoded = json.decode(data);
        _items.clear();
        for (final item in decoded) {
          try {
            _items.add(CartItem.fromMap(item as Map<String, dynamic>));
          } catch (e) {
            debugPrint('Error parsing cart item: $e');
          }
        }
        notifyListeners();
      }
    } catch (e) {
      debugPrint('Error loading cart from SharedPreferences: $e');
    }
  }

  /// Simpan keranjang ke SharedPreferences
  Future<void> _saveToPrefs() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final list = _items.map((e) => e.toMap()).toList();
      await prefs.setString(_prefsKey, json.encode(list));
    } catch (e) {
      debugPrint('Error saving cart to SharedPreferences: $e');
    }
  }

  /// Tambahkan produk ke keranjang.
  /// Mengembalikan `true` jika berhasil, `false` jika stok habis / limit tercapai.
  bool addToCart(Product product, {int quantity = 1}) {
    if (product.stock <= 0) {
      return false;
    }

    final index = _items.indexWhere((item) => item.product.id == product.id);

    if (index != -1) {
      final existingItem = _items[index];
      final newQuantity = existingItem.quantity + quantity;
      if (newQuantity > product.stock) {
        return false;
      }
      existingItem.quantity = newQuantity;
    } else {
      final initialQuantity = quantity.clamp(1, product.stock);
      _items.add(CartItem(product: product, quantity: initialQuantity));
    }

    _saveToPrefs();
    notifyListeners();
    return true;
  }

  /// Tambah kuantitas produk sebanyak 1
  bool incrementQuantity(int productId) {
    final index = _items.indexWhere((item) => item.product.id == productId);
    if (index != -1) {
      final item = _items[index];
      if (item.quantity < item.product.stock) {
        item.quantity++;
        _saveToPrefs();
        notifyListeners();
        return true;
      }
    }
    return false;
  }

  /// Kurangi kuantitas produk sebanyak 1.
  /// Jika kuantitas sudah 1, item akan dihapus dari keranjang.
  void decrementQuantity(int productId) {
    final index = _items.indexWhere((item) => item.product.id == productId);
    if (index != -1) {
      final item = _items[index];
      if (item.quantity > 1) {
        item.quantity--;
        _saveToPrefs();
        notifyListeners();
      } else {
        removeFromCart(productId);
      }
    }
  }

  /// Hapus produk dari keranjang berdasarkan ID
  void removeFromCart(int productId) {
    _items.removeWhere((item) => item.product.id == productId);
    _saveToPrefs();
    notifyListeners();
  }

  /// Kosongkan seluruh isi keranjang
  void clearCart() {
    _items.clear();
    _saveToPrefs();
    notifyListeners();
  }

  /// Periksa apakah suatu produk sudah ada di keranjang
  bool isInCart(int productId) {
    return _items.any((item) => item.product.id == productId);
  }

  /// Ambil jumlah kuantitas produk yang ada di keranjang
  int getQuantity(int productId) {
    final index = _items.indexWhere((item) => item.product.id == productId);
    if (index != -1) {
      return _items[index].quantity;
    }
    return 0;
  }
}
