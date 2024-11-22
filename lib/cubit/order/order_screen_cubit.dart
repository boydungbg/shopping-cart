import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart' hide Order;
import 'package:shopping_cart/common/exception/exception.dart';
import 'package:shopping_cart/cubit/order/order_screen_state.dart';
import 'package:shopping_cart/entities/order/get_list_order_reponse.dart';
import 'package:shopping_cart/entities/order/get_list_order_request.dart';
import 'package:shopping_cart/services/order_service.dart';
import 'package:shopping_cart/entities/order/order.dart';

@injectable
class OrderScreenCubit extends Cubit<OrderScreenState> {
  OrderScreenCubit(this._service) : super(const OrderScreenInitState());

  final OrderService _service;

  int page = 1;
  int perPage = 100;

  Future<void> init() async {
    emit(OrderScreenLoadingSkeletonState(
        orderScreenViewModel: state.orderScreenViewModel.copyWith()));
    await Future.delayed(const Duration(seconds: 1));
    final orders = await _getListOrder(page, perPage);
    emit(OrderScreenPrimaryState(
        orderScreenViewModel:
            state.orderScreenViewModel.copyWith(orders: orders)));
  }

  Future<List<Order>> _getListOrder(int page, int perPage) async {
    Either<BaseException, GetListOrderResponse> result = await _service
        .getListOrder(GetListOrderRequest(page: page, perPage: perPage));
    if (result.isLeft) {
      return [];
    }
    return result.right.orders;
  }

  void viewMoreItemOrder(int orderId) {
    final cloneList =
        List<int>.from(state.orderScreenViewModel.selectedOrdersViewMore);
    cloneList.add(orderId);
    emit(OrderScreenPrimaryState(
        orderScreenViewModel: state.orderScreenViewModel
            .copyWith(selectedOrdersViewMore: cloneList)));
  }
}
