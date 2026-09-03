import 'package:flutter_application_1/Tugas/Tugas_day_32_/model/post_model.dart';
import 'package:flutter_application_1/Tugas/Tugas_day_32_/services/cart_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  Product createDummyProduct({
    required int id,
    required String title,
    required double price,
    required double discountPercentage,
    required int stock,
  }) {
    return Product(
      id: id,
      title: title,
      description: 'Deskripsi $title',
      category: 'gadget',
      price: price,
      discountPercentage: discountPercentage,
      rating: 4.5,
      stock: stock,
      tags: ['test', 'dummy'],
      sku: 'SKU-$id',
      weight: 100,
      dimensions: Dimensions(width: 10, height: 10, depth: 10),
      warrantyInformation: WarrantyInformation.THE_1_YEAR_WARRANTY,
      shippingInformation: ShippingInformation.SHIPS_IN_12_BUSINESS_DAYS,
      availabilityStatus: AvailabilityStatus.IN_STOCK,
      reviews: [],
      returnPolicy: ReturnPolicy.THE_30_DAYS_RETURN_POLICY,
      minimumOrderQuantity: 1,
      meta: Meta(
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        barcode: '123456',
        qrCode: 'https://example.com',
      ),
      images: ['https://example.com/image.png'],
      thumbnail: 'https://example.com/thumb.png',
    );
  }

  test('CartService add, increment, decrement, and calculation test', () {
    final cartService = CartService.instance;
    cartService.clearCart();

    expect(cartService.isEmpty, isTrue);
    expect(cartService.totalItemCount, 0);

    final product1 = createDummyProduct(
      id: 1,
      title: 'Smartphone X',
      price: 100.0,
      discountPercentage: 20.0,
      stock: 5,
    );

    final product2 = createDummyProduct(
      id: 2,
      title: 'Wireless Mouse',
      price: 25.0,
      discountPercentage: 0.0,
      stock: 3,
    );

    // 1. Add product1
    final added1 = cartService.addToCart(product1, quantity: 2);
    expect(added1, isTrue);
    expect(cartService.uniqueItemCount, 1);
    expect(cartService.totalItemCount, 2);
    expect(cartService.totalPrice, 200.0);

    // 2. Add product2
    final added2 = cartService.addToCart(product2, quantity: 1);
    expect(added2, isTrue);
    expect(cartService.uniqueItemCount, 2);
    expect(cartService.totalItemCount, 3);
    expect(cartService.totalPrice, 225.0);

    // 3. Increment product1
    final incSuccess = cartService.incrementQuantity(1);
    expect(incSuccess, isTrue);
    expect(cartService.getQuantity(1), 3);

    // 4. Test stock limit on product2 (stock is 3)
    expect(cartService.incrementQuantity(2), isTrue); // qty = 2
    expect(cartService.incrementQuantity(2), isTrue); // qty = 3
    expect(cartService.incrementQuantity(2), isFalse); // exceeds stock
    expect(cartService.getQuantity(2), 3);

    // 5. Decrement and remove
    cartService.decrementQuantity(2); // qty = 2
    expect(cartService.getQuantity(2), 2);
    cartService.removeFromCart(2);
    expect(cartService.isInCart(2), isFalse);
    expect(cartService.uniqueItemCount, 1);

    // 6. Clear cart
    cartService.clearCart();
    expect(cartService.isEmpty, isTrue);
    expect(cartService.totalPrice, 0.0);
  });
}
