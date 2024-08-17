import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_cart_item_request.freezed.dart';
part 'delete_cart_item_request.g.dart';

@freezed
class DeleteCartItemRequest with _$DeleteCartItemRequest {
  const DeleteCartItemRequest._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DeleteCartItemRequest({
    @Default(0) int id,
  }) = _DeleteCartItemRequest;

  factory DeleteCartItemRequest.fromJson(Map<String, Object?> json) =>
      _$DeleteCartItemRequestFromJson(json);
}
