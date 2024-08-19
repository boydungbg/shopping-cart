import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopping_cart/common/di/di.dart';
import 'package:shopping_cart/entities/cart/add_cart_item_request.dart';
import 'package:shopping_cart/entities/cart/cart_item.dart';
import 'package:shopping_cart/entities/cart/delete_cart_item_request.dart';
import 'package:shopping_cart/entities/cart/get_list_cart_item_request.dart';
import 'package:shopping_cart/entities/cart/get_list_cart_item_response.dart';
import 'package:shopping_cart/entities/cart/update_cart_item_request.dart';
import 'package:shopping_cart/repository/local/cart_repository.dart';
import 'package:shopping_cart/services/cart_service.dart';

import 'cart_service_test.mocks.dart';

@GenerateNiceMocks([MockSpec<CartReposityImpl>()])
void main() {
  late CartServiceImpl cartService;
  late MockCartReposityImpl mockCartRepository;

  setUp(() async {
    await initDi();
    mockCartRepository = MockCartReposityImpl();
    cartService = CartServiceImpl(mockCartRepository);
  });

  group('CartServiceImpl Tests', () {
    const addCartItemRequest = AddCartItemRequest(
      productId: 1,
      quantity: 2,
      title: 'Test Product',
      price: 100.0,
      image: 'test_image.png',
    );

    test('addCartItem should return true when adding a new item', () async {
      // Arrange
      when(mockCartRepository.getCartItem(any))
          .thenAnswer((_) async => const CartItem(id: 0));
      when(mockCartRepository.addCartItem(any)).thenAnswer((_) async => true);

      // Act
      final result = await cartService.addCartItem(addCartItemRequest);

      // Assert
      expect(result, const Right(true));
      verify(mockCartRepository.addCartItem(any)).called(1);
    });

    test('addCartItem should update existing item if it exists', () async {
      // Arrange
      const existingCartItem = CartItem(
        id: 1,
        productId: 1,
        quantity: 2,
        title: 'Test Product',
        price: 100.0,
        image: 'test_image.png',
      );
      when(mockCartRepository.getCartItem(any))
          .thenAnswer((_) async => existingCartItem);
      when(mockCartRepository.updateCartItem(any, any))
          .thenAnswer((_) async => true);

      // Act
      final result = await cartService.addCartItem(addCartItemRequest);

      // Assert
      expect(result, const Right(true));
      verify(mockCartRepository.updateCartItem(any, any)).called(1);
    });

    test('deleteAllItemInCart should return true when successful', () async {
      // Arrange
      when(mockCartRepository.deleteAllItemInCart())
          .thenAnswer((_) async => true);

      // Act
      final result = await cartService.deleteAllItemInCart();

      // Assert
      expect(result, const Right(true));
      verify(mockCartRepository.deleteAllItemInCart()).called(1);
    });

    test('deleteCartItem should return true when successful', () async {
      // Arrange
      const deleteRequest = DeleteCartItemRequest(id: 1);
      when(mockCartRepository.deleteCartItem(deleteRequest))
          .thenAnswer((_) async => true);

      // Act
      final result = await cartService.deleteCartItem(deleteRequest);

      // Assert
      expect(result, const Right(true));
      verify(mockCartRepository.deleteCartItem(deleteRequest)).called(1);
    });

    test('getCartItems should return GetListCartItemResponse when successful',
        () async {
      // Arrange
      const getRequest = GetListCartItemRequest();
      const getResponse = GetListCartItemResponse(cartItems: []);
      when(mockCartRepository.getCartItems(getRequest))
          .thenAnswer((_) async => getResponse);

      // Act
      final result = await cartService.getCartItems(getRequest);

      // Assert
      expect(result, const Right(getResponse));
      verify(mockCartRepository.getCartItems(getRequest)).called(1);
    });

    test('getCountItemInCart should return the item count', () async {
      // Arrange
      when(mockCartRepository.getCountItemInCart()).thenAnswer((_) async => 5);

      // Act
      final result = await cartService.getCountItemInCart();

      // Assert
      expect(result, const Right(5));
      verify(mockCartRepository.getCountItemInCart()).called(1);
    });

    test('updateCartItem should return true when successful', () async {
      // Arrange
      const updateRequest = UpdateCartItemRequest(
        productId: 1,
        quantity: 3,
        title: 'Updated Product',
        price: 150.0,
        image: 'updated_image.png',
      );
      when(mockCartRepository.updateCartItem(any, updateRequest))
          .thenAnswer((_) async => true);

      // Act
      final result = await cartService.updateCartItem(1, updateRequest);

      // Assert
      expect(result, const Right(true));
      verify(mockCartRepository.updateCartItem(any, updateRequest)).called(1);
    });
  });
}
