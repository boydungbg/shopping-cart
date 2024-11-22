import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_order_request.freezed.dart';

part 'add_order_request.g.dart';

@freezed
class AddOrderRequest with _$AddOrderRequest {
  const AddOrderRequest._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AddOrderRequest({
    @Default(0) int status,
    @Default("") String orderNo,
    @Default(0) int createdAt,
    @Default(0) double totalPrice,
    @Default(0) double totalQty,
  }) = _AddOrderRequest;

  factory AddOrderRequest.fromJson(Map<String, Object?> json) =>
      _$AddOrderRequestFromJson(json);
}
