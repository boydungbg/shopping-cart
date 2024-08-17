import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_cart/entities/product/product.dart';

part 'product_list_response.freezed.dart';
part 'product_list_response.g.dart';

@freezed
class ProductListResponse with _$ProductListResponse {
  const ProductListResponse._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProductListResponse({
    @Default([]) List<Product> products,
    @Default(0) int perPage,
    @Default(0) int maxPage,
    @Default(0) int count,
    @Default(0) int page,
  }) = _ProductListResponse;

  factory ProductListResponse.fromJson(Map<String, Object?> json) =>
      _$ProductListResponseFromJson(json);
}
