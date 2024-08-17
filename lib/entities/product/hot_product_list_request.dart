import 'package:freezed_annotation/freezed_annotation.dart';

part 'hot_product_list_request.freezed.dart';
part 'hot_product_list_request.g.dart';

@freezed
class HotProductListRequest with _$HotProductListRequest {
  const HotProductListRequest._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory HotProductListRequest({
    @Default(10) int limit,
  }) = _HotProductListRequest;

  factory HotProductListRequest.fromJson(Map<String, Object?> json) =>
      _$HotProductListRequestFromJson(json);
}
