import 'dart:convert';
import 'package:flutter_application_1/Tugas/Tugas_day_32_/model/post_model.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({
    required this.product,
    this.quantity = 1,
  });

  /// Harga produk setelah diskon per unit
  double get unitPrice => product.price;

  /// Total harga untuk item ini (unitPrice * quantity)
  double get totalPrice => unitPrice * quantity;

  /// Harga asli per unit sebelum diskon
  double get originalUnitPrice {
    if (product.discountPercentage > 0) {
      return product.price / (1 - (product.discountPercentage / 100));
    }
    return product.price;
  }

  /// Total harga asli untuk item ini sebelum diskon
  double get totalOriginalPrice => originalUnitPrice * quantity;

  /// Total hemat / penghematan dari diskon
  double get totalSavings => totalOriginalPrice - totalPrice;

  Map<String, dynamic> toMap() {
    return {
      'product': product.toJson(),
      'quantity': quantity,
    };
  }

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      product: Product.fromJson(map['product'] as Map<String, dynamic>),
      quantity: (map['quantity'] as num?)?.toInt() ?? 1,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItem.fromJson(String source) =>
      CartItem.fromMap(json.decode(source) as Map<String, dynamic>);
}
