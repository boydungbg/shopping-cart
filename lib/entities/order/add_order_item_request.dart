import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_order_item_request.freezed.dart';

part 'add_order_item_request.g.dart';

@freezed
class AddOrderItemRequest with _$AddOrderItemRequest {
  const AddOrderItemRequest._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AddOrderItemRequest({
    @Default(0) int productId,
    @Default(0) int orderId,
    @Default("") String title,
    @Default("") String image,
    @Default(0) double price,
    @Default(0) int quantity,
  }) = _AddOrderItemRequest;

  factory AddOrderItemRequest.fromJson(Map<String, Object?> json) =>
      _$AddOrderItemRequestFromJson(json);
}
