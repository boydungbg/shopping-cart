import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_request.freezed.dart';
part 'product_list_request.g.dart';

@freezed
class ProductListRequest with _$ProductListRequest {
  const ProductListRequest._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProductListRequest({
    @Default(10) int limit,
    @Default(1) int page,
  }) = _ProductListRequest;

  factory ProductListRequest.fromJson(Map<String, Object?> json) =>
      _$ProductListRequestFromJson(json);
}
