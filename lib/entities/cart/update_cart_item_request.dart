import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_cart_item_request.freezed.dart';
part 'update_cart_item_request.g.dart';

@freezed
class UpdateCartItemRequest with _$UpdateCartItemRequest {
  const UpdateCartItemRequest._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UpdateCartItemRequest({
    @Default(0) int productId,
    @Default("") String title,
    @Default("") String image,
    @Default(0) double price,
    @Default(0) int quantity,
  }) = _UpdateCartItemRequest;

  factory UpdateCartItemRequest.fromJson(Map<String, Object?> json) =>
      _$UpdateCartItemRequestFromJson(json);
}
