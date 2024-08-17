import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_cart/entities/product/product.dart';

part 'hot_product_list_response.freezed.dart';
part 'hot_product_list_response.g.dart';

@freezed
class HotProductListResponse with _$HotProductListResponse {
  const HotProductListResponse._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory HotProductListResponse({
    @Default([]) List<Product> products,
  }) = _HotProductListResponse;

  factory HotProductListResponse.fromJson(Map<String, Object?> json) =>
      _$HotProductListResponseFromJson(json);
}
