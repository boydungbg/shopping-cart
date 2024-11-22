import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_cart/entities/cart/cart_item.dart';
import 'package:shopping_cart/entities/order/order.dart';

part 'order_screen_state.freezed.dart';

@freezed
abstract class OrderScreenState with _$OrderScreenState {
  const OrderScreenState._();

  const factory OrderScreenState.orderScreenInitState({
    @Default(OrderScreenViewModel()) OrderScreenViewModel orderScreenViewModel,
  }) = OrderScreenInitState;

  const factory OrderScreenState.orderScreenLoadingSkeletonState({
    @Default(OrderScreenViewModel()) OrderScreenViewModel orderScreenViewModel,
  }) = OrderScreenLoadingSkeletonState;

  const factory OrderScreenState.orderScreenLoadingState({
    @Default(OrderScreenViewModel()) OrderScreenViewModel orderScreenViewModel,
  }) = OrderScreenLoadingState;

  const factory OrderScreenState.orderScreenPrimaryState({
    @Default(OrderScreenViewModel()) OrderScreenViewModel orderScreenViewModel,
  }) = OrderScreenPrimaryState;

  const factory OrderScreenState.orderScreenErrorState({
    @Default(OrderScreenViewModel()) OrderScreenViewModel orderScreenViewModel,
  }) = OrderScreenErrorState;

  const factory OrderScreenState.orderScreenOrderSuccessState({
    @Default(OrderScreenViewModel()) OrderScreenViewModel orderScreenViewModel,
  }) = OrderScreenOrderSuccessState;
}

@freezed
class OrderScreenViewModel with _$OrderScreenViewModel {
  const OrderScreenViewModel._();

  const factory OrderScreenViewModel({
    @Default([]) List<Order> orders,
    @Default([]) List<int> selectedOrdersViewMore,
  }) = _OrderScreenViewModel;
}
