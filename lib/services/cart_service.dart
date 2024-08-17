import 'dart:developer';

import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_cart/common/exception/exception.dart';
import 'package:shopping_cart/entities/cart/add_cart_item_request.dart';
import 'package:shopping_cart/entities/cart/cart_item.dart';
import 'package:shopping_cart/entities/cart/delete_cart_item_request.dart';
import 'package:shopping_cart/entities/cart/get_list_cart_item_request.dart';
import 'package:shopping_cart/entities/cart/get_list_cart_item_response.dart';
import 'package:shopping_cart/entities/cart/update_cart_item_request.dart';
import 'package:shopping_cart/repository/local/cart_repository.dart';

import 'package:shopping_cart/services/base_service.dart';

abstract class CartService {
  Future<Either<BaseException, bool>> addCartItem(AddCartItemRequest request);

  Future<Either<BaseException, bool>> updateCartItem(
      int cartId, UpdateCartItemRequest request);

  Future<Either<BaseException, GetListCartItemResponse>> getCartItems(
      GetListCartItemRequest request);

  Future<Either<BaseException, bool>> deleteCartItem(
      DeleteCartItemRequest request);

  Future<Either<BaseException, bool>> deleteAllItemInCart();

  Future<Either<BaseException, int>> getCountItemInCart();
}

@Injectable(as: CartService)
class CartServiceImpl extends BaseService implements CartService {
  CartServiceImpl(this._repo) : super();
  final CartRepository _repo;

  @override
  Future<Either<BaseException, bool>> addCartItem(
      AddCartItemRequest request) async {
    try {
      final CartItem cartItemExis = await _repo.getCartItem(request.productId);
      if (cartItemExis.id != 0) {
        final UpdateCartItemRequest updateCartItem = UpdateCartItemRequest(
            image: cartItemExis.image,
            price: cartItemExis.price,
            productId: cartItemExis.productId,
            quantity: cartItemExis.quantity + request.quantity,
            title: cartItemExis.title);
        return Right(
            await _repo.updateCartItem(cartItemExis.id, updateCartItem));
      }
      return Right(await _repo.addCartItem(request));
    } catch (e, trace) {
      log('addCartItem ERROR $e $trace');
      return Left(exceptionHandle.handle(e));
    }
  }

  @override
  Future<Either<BaseException, bool>> deleteAllItemInCart() async {
    try {
      return Right(await _repo.deleteAllItemInCart());
    } catch (e, trace) {
      log('deleteAllItemInCart ERROR $e $trace');
      return Left(exceptionHandle.handle(e));
    }
  }

  @override
  Future<Either<BaseException, bool>> deleteCartItem(
      DeleteCartItemRequest request) async {
    try {
      return Right(await _repo.deleteCartItem(request));
    } catch (e, trace) {
      log('deleteCartItem ERROR $e $trace');
      return Left(exceptionHandle.handle(e));
    }
  }

  @override
  Future<Either<BaseException, GetListCartItemResponse>> getCartItems(
      GetListCartItemRequest request) async {
    try {
      return Right(await _repo.getCartItems(request));
    } catch (e, trace) {
      log('getCartItems ERROR $e $trace');
      return Left(exceptionHandle.handle(e));
    }
  }

  @override
  Future<Either<BaseException, int>> getCountItemInCart() async {
    try {
      return Right(await _repo.getCountItemInCart());
    } catch (e, trace) {
      log('getCountItemInCart ERROR $e $trace');
      return Left(exceptionHandle.handle(e));
    }
  }

  @override
  Future<Either<BaseException, bool>> updateCartItem(
      int cartId, UpdateCartItemRequest request) async {
    try {
      return Right(await _repo.updateCartItem(cartId, request));
    } catch (e, trace) {
      log('updateCartItem ERROR $e $trace');
      return Left(exceptionHandle.handle(e));
    }
  }
}
