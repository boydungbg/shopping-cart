import 'package:injectable/injectable.dart';
import 'package:shopping_cart/entities/order/add_order_item_request.dart';
import 'package:shopping_cart/entities/order/add_order_request.dart';
import 'package:shopping_cart/entities/order/get_list_order_reponse.dart';
import 'package:shopping_cart/entities/order/get_list_order_request.dart';
import 'package:shopping_cart/entities/order/order.dart' as OrderModel;
import 'package:shopping_cart/entities/order/order_item.dart';
import 'package:shopping_cart/repository/sqflite_database.dart';
import 'package:sqflite/sqflite.dart';

abstract class OrderRepository {
  Future<bool> createOrder(AddOrderRequest orderRequest,
      List<AddOrderItemRequest> orderItemsRequest);

  Future<GetListOrderResponse> getListOrder(
      GetListOrderRequest getListOrderRequest);
}

@Injectable(as: OrderRepository)
class OrderRepositoryImpl implements OrderRepository {
  OrderRepositoryImpl(SqfliteDatabase sqflite) {
    _db = sqflite.db;
  }

  late Database _db;

  @override
  Future<bool> createOrder(AddOrderRequest orderRequest,
      List<AddOrderItemRequest> orderItemsRequest) async {
    bool success = await _db.transaction<bool>(
      (txn) async {
        int id = await txn.insert('orders', orderRequest.toJson());
        // ignore: avoid_function_literals_in_foreach_calls
        orderItemsRequest.forEach((e) async {
          final data = e.toJson();
          data['order_id'] = id;
          await txn.insert('order_items', data);
        });
        return true;
      },
    ).catchError((error) {
      print('Transaction failed: $error');
      return false;
    });

    return success;
  }

  @override
  Future<GetListOrderResponse> getListOrder(GetListOrderRequest request) async {
    int offset = (request.page - 1) * request.perPage;
    List<Map<String, Object?>> data = await _db.query('orders',
        limit: request.perPage, offset: offset, orderBy: 'created_at DESC');
    List<Map<String, Object?>> dataCountP =
        await _db.rawQuery('SELECT COUNT(*) as count FROM orders');
    int count = dataCountP[0]['count'] as int;
    int maxPage = (count / request.perPage).ceil();
    List<OrderModel.Order> orders = data
        .map((e) {
          return OrderModel.Order.fromJson(e);
        })
        .cast<OrderModel.Order>()
        .toList();

    List<int> uniqueOrderIds = orders
        .map((order) => order.id) // Extract 'orderId'
        .cast<int>() // Safely cast to int
        .toSet() // Convert to a Set to remove duplicates
        .toList(); // Convert back to List if needed
    String placeholders = List.filled(uniqueOrderIds.length, '?').join(', ');
    final List<Map<String, Object?>> orderItems = await _db.query(
      'order_items',
      where: 'order_id IN ($placeholders)',
      whereArgs: uniqueOrderIds, // List of values to substitute
    );
    List<OrderItem> items = orderItems
        .map((e) {
          return OrderItem.fromJson(e);
        })
        .cast<OrderItem>()
        .toList();
    orders = orders
        .map(
          (ord) {
            final newOrder = ord.copyWith(
                items: items
                    .where(
                      (item) => item.orderId == ord.id,
                    )
                    .toList());
            return newOrder;
          },
        )
        .cast<OrderModel.Order>()
        .toList();

    return GetListOrderResponse(orders: orders);
  }
}
