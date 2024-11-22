import 'dart:math';

import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_cart/common/exception/exception.dart';
import 'package:shopping_cart/cubit/cart/cart_screen_state.dart';
import 'package:shopping_cart/entities/cart/cart_item.dart';
import 'package:shopping_cart/entities/cart/delete_cart_item_request.dart';
import 'package:shopping_cart/entities/cart/get_list_cart_item_request.dart';
import 'package:shopping_cart/entities/cart/get_list_cart_item_response.dart';
import 'package:shopping_cart/entities/cart/update_cart_item_request.dart';
import 'package:shopping_cart/entities/order/add_order_item_request.dart';
import 'package:shopping_cart/entities/order/add_order_request.dart';
import 'package:shopping_cart/services/cart_service.dart';
import 'package:shopping_cart/services/order_service.dart';

@injectable
class CartScreenCubit extends Cubit<CartScreenState> {
  CartScreenCubit(this._service, this._orderService)
      : super(const CartScreenInitState());
  final CartService _service;
  final OrderService _orderService;

  int totalCartItemInScreen = 0;

  Future<void> getListCart() async {
    emit(CartScreenLoadingSkeletonState(
        cartScreenViewModel: state.cartScreenViewModel.copyWith()));
    await Future.delayed(const Duration(seconds: 1));

    Either<BaseException, GetListCartItemResponse> fold =
        await _service.getCartItems(const GetListCartItemRequest());
    if (fold.isLeft) {
      return emit(CartScreenErrorState(
          cartScreenViewModel: state.cartScreenViewModel.copyWith()));
    }
    if (fold.isRight) {
      List<CartItem> items = List.from(fold.right.cartItems);
      double totalPrice = 0;
      for (var item in items) {
        totalPrice += item.quantity * item.price;
      }
      totalCartItemInScreen = items.length;
      emit(CartScreenPrimaryState(
          cartScreenViewModel:
              CartScreenViewModel(cartItems: items, totalPrice: totalPrice)));
    }
  }

  Future<void> updateCartScreen(int cartId, CartItem cartItem) async {
    emit(CartScreenLoadingState(
        cartScreenViewModel: state.cartScreenViewModel.copyWith()));

    await Future.delayed(const Duration(seconds: 1));

    Either<BaseException, bool> fold = await _service.updateCartItem(
        cartId,
        UpdateCartItemRequest(
            image: cartItem.image,
            price: cartItem.price,
            productId: cartItem.productId,
            quantity: cartItem.quantity,
            title: cartItem.title));
    if (fold.isLeft) {
      return emit(CartScreenErrorState(
          cartScreenViewModel: state.cartScreenViewModel.copyWith()));
    }
    if (fold.isRight) {
      Either<BaseException, GetListCartItemResponse> fold =
          await _service.getCartItems(const GetListCartItemRequest());
      if (fold.isLeft) {
        return emit(CartScreenErrorState(
            cartScreenViewModel: state.cartScreenViewModel.copyWith()));
      }
      if (fold.isRight) {
        List<CartItem> items = List.from(fold.right.cartItems);
        double totalPrice = 0;
        for (var item in items) {
          totalPrice += item.quantity * item.price;
        }
        totalCartItemInScreen = items.length;

        emit(CartScreenPrimaryState(
            cartScreenViewModel:
                CartScreenViewModel(cartItems: items, totalPrice: totalPrice)));
      }
    }
  }

  Future<void> deleteItem(int cartId) async {
    emit(CartScreenLoadingState(
        cartScreenViewModel: state.cartScreenViewModel.copyWith()));
    Either<BaseException, bool> fold =
        await _service.deleteCartItem(DeleteCartItemRequest(id: cartId));
    if (fold.isLeft) {
      return emit(CartScreenErrorState(
          cartScreenViewModel: state.cartScreenViewModel.copyWith()));
    }

    if (fold.isRight) {
      Either<BaseException, GetListCartItemResponse> fold =
          await _service.getCartItems(const GetListCartItemRequest());
      if (fold.isLeft) {
        return emit(CartScreenErrorState(
            cartScreenViewModel: state.cartScreenViewModel.copyWith()));
      }
      if (fold.isRight) {
        List<CartItem> items = List.from(fold.right.cartItems);
        double totalPrice = 0;
        for (var item in items) {
          totalPrice += item.quantity * item.price;
        }
        totalCartItemInScreen = items.length;

        emit(CartScreenPrimaryState(
            cartScreenViewModel:
                CartScreenViewModel(cartItems: items, totalPrice: totalPrice)));
      }
    }
  }

  Future<void> order() async {
    emit(CartScreenLoadingState(
        cartScreenViewModel: state.cartScreenViewModel.copyWith()));
    await Future.delayed(const Duration(seconds: 1));
    final double totalPrice =
        state.cartScreenViewModel.cartItems.fold(0, (value, item) {
      return value + item.price * item.quantity;
    });

    final double totalQty =
        state.cartScreenViewModel.cartItems.fold(0, (value, item) {
      return value + item.quantity;
    });
    final AddOrderRequest orderRequest = AddOrderRequest(
        createdAt: DateTime.now().millisecondsSinceEpoch,
        orderNo: _generateRandomNumber(),
        status: 0,
        totalPrice: totalPrice,
        totalQty: totalQty);

    final List<AddOrderItemRequest> orderItemsRequest =
        state.cartScreenViewModel.cartItems
            .map((cartItem) {
              return AddOrderItemRequest(
                  image: cartItem.image,
                  orderId: 0,
                  price: cartItem.price,
                  productId: cartItem.productId,
                  quantity: cartItem.quantity,
                  title: cartItem.title);
            })
            .cast<AddOrderItemRequest>()
            .toList();
    Either<BaseException, bool> orderFold =
        await _orderService.createOrder(orderRequest, orderItemsRequest);
    if (orderFold.isLeft) {
      return emit(CartScreenErrorState(
          cartScreenViewModel: state.cartScreenViewModel.copyWith()));
    }
    Either<BaseException, bool> fold = await _service.deleteAllItemInCart();
    if (fold.isLeft) {
      return emit(CartScreenErrorState(
          cartScreenViewModel: state.cartScreenViewModel.copyWith()));
    }
    if (fold.isRight) {
      totalCartItemInScreen = 0;
      return emit(const CartScreenOrderSuccessState());
    }
  }

  String _generateRandomNumber() {
    return (10000000 + Random().nextInt(99999999))
        .toString(); // Generates a random 4-digit number
  }
}
