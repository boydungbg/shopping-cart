import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_list_cart_item_request.freezed.dart';
part 'get_list_cart_item_request.g.dart';

@freezed
class GetListCartItemRequest with _$GetListCartItemRequest {
  const GetListCartItemRequest._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetListCartItemRequest() = _GetListCartItemRequest;

  factory GetListCartItemRequest.fromJson(Map<String, Object?> json) =>
      _$GetListCartItemRequestFromJson(json);
}
