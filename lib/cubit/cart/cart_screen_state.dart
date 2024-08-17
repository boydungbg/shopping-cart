import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_cart/entities/cart/cart_item.dart';

part 'cart_screen_state.freezed.dart';

@freezed
abstract class CartScreenState with _$CartScreenState {
  const CartScreenState._();

  const factory CartScreenState.cartScreenInitState({
    @Default(CartScreenViewModel()) CartScreenViewModel cartScreenViewModel,
  }) = CartScreenInitState;

  const factory CartScreenState.cartScreenLoadingSkeletonState({
    @Default(CartScreenViewModel()) CartScreenViewModel cartScreenViewModel,
  }) = CartScreenLoadingSkeletonState;

  const factory CartScreenState.cartScreenLoadingState({
    @Default(CartScreenViewModel()) CartScreenViewModel cartScreenViewModel,
  }) = CartScreenLoadingState;

  const factory CartScreenState.cartScreenPrimaryState({
    @Default(CartScreenViewModel()) CartScreenViewModel cartScreenViewModel,
  }) = CartScreenPrimaryState;

  const factory CartScreenState.cartScreenErrorState({
    @Default(CartScreenViewModel()) CartScreenViewModel cartScreenViewModel,
  }) = CartScreenErrorState;

  const factory CartScreenState.cartScreenOrderSuccessState({
    @Default(CartScreenViewModel()) CartScreenViewModel cartScreenViewModel,
  }) = CartScreenOrderSuccessState;
}

@freezed
class CartScreenViewModel with _$CartScreenViewModel {
  const CartScreenViewModel._();

  const factory CartScreenViewModel({
    @Default([]) List<CartItem> cartItems,
    @Default(0) double totalPrice,
  }) = _CartScreenViewModel;
}
