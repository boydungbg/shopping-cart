import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_cart/entities/order/order_item.dart';

part 'order.freezed.dart';

part 'order.g.dart';

@freezed
class Order with _$Order {
  const Order._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Order({
    @Default(0) int id,
    @Default(-1) int status,
    @Default("") String orderNo,
    @Default(0) int createdAt,
    @Default(0) double totalPrice,
    @Default(0) int totalQty,
    @Default([]) List<OrderItem> items,
  }) = _Order;

  factory Order.fromJson(Map<String, Object?> json) => _$OrderFromJson(json);
}
