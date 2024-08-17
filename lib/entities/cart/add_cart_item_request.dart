import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_cart_item_request.freezed.dart';

part 'add_cart_item_request.g.dart';

@freezed
class AddCartItemRequest with _$AddCartItemRequest {
  const AddCartItemRequest._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AddCartItemRequest({
    @Default(0) int productId,
    @Default("") String title,
    @Default("") String image,
    @Default(0) double price,
    @Default(0) int quantity,
  }) = _AddCartItemRequest;

  factory AddCartItemRequest.fromJson(Map<String, Object?> json) =>
      _$AddCartItemRequestFromJson(json);
}
