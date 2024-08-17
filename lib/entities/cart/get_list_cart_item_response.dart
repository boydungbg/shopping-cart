import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_cart/entities/cart/cart_item.dart';

part 'get_list_cart_item_response.freezed.dart';

part 'get_list_cart_item_response.g.dart';

@freezed
class GetListCartItemResponse with _$GetListCartItemResponse {
  const GetListCartItemResponse._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetListCartItemResponse({
    @Default([]) List<CartItem> cartItems,
  }) = _GetListCartItemResponse;

  factory GetListCartItemResponse.fromJson(Map<String, Object?> json) =>
      _$GetListCartItemResponseFromJson(json);
}
