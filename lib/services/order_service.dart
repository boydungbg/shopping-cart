import 'dart:developer';

import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_cart/common/exception/exception.dart';
import 'package:shopping_cart/entities/order/add_order_item_request.dart';
import 'package:shopping_cart/entities/order/add_order_request.dart';
import 'package:shopping_cart/entities/order/get_list_order_reponse.dart';
import 'package:shopping_cart/entities/order/get_list_order_request.dart';
import 'package:shopping_cart/repository/local/order_repository.dart';
import 'package:shopping_cart/services/base_service.dart';

abstract class OrderService {
  Future<Either<BaseException, bool>> createOrder(AddOrderRequest orderRequest,
      List<AddOrderItemRequest> orderItemsRequest);

  Future<Either<BaseException, GetListOrderResponse>> getListOrder(
      GetListOrderRequest getListOrderRequest);
}

@Injectable(as: OrderService)
class OrderServiceImpl extends BaseService implements OrderService {
  OrderServiceImpl(this._repo) : super();
  final OrderRepository _repo;

  @override
  Future<Either<BaseException, bool>> createOrder(AddOrderRequest orderRequest,
      List<AddOrderItemRequest> orderItemsRequest) async {
    try {
      return Right(await _repo.createOrder(orderRequest, orderItemsRequest));
    } catch (e, trace) {
      log('createOrder ERROR $e $trace');
      return Left(exceptionHandle.handle(e));
    }
  }

  @override
  Future<Either<BaseException, GetListOrderResponse>> getListOrder(
      GetListOrderRequest getListOrderRequest) async {
    try {
      return Right(await _repo.getListOrder(getListOrderRequest));
    } catch (e, trace) {
      log('getListOrder ERROR $e $trace');
      return Left(exceptionHandle.handle(e));
    }
  }
}
