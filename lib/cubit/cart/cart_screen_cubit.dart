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
import 'package:shopping_cart/services/cart_service.dart';

@injectable
class CartScreenCubit extends Cubit<CartScreenState> {
  CartScreenCubit(this._service) : super(const CartScreenInitState());
  final CartService _service;

  int totalCartItemInScreen = 0;

  Future<void> getListCart() async {
    emit(CartScreenLoadingSkeletonState(
        cartScreenViewModel: state.cartScreenViewModel.copyWith()));
    await Future.delayed(const Duration(seconds: 3));

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
    await Future.delayed(const Duration(seconds: 1));

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
    await Future.delayed(const Duration(seconds: 2));
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
}
