import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item.freezed.dart';

part 'order_item.g.dart';

@freezed
class OrderItem with _$OrderItem {
  const OrderItem._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OrderItem({
    @Default(0) int id,
    @Default(0) int productId,
    @Default(0) int orderId,
    @Default("") String title,
    @Default("") String image,
    @Default(0) double price,
    @Default(0) int quantity,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, Object?> json) =>
      _$OrderItemFromJson(json);
}
