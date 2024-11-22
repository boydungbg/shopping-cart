import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_list_order_request.freezed.dart';

part 'get_list_order_request.g.dart';

@freezed
class GetListOrderRequest with _$GetListOrderRequest {
  const GetListOrderRequest._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetListOrderRequest({
    @Default(0) int page,
    @Default(0) int perPage,
  }) = _GetListOrderRequest;

  factory GetListOrderRequest.fromJson(Map<String, Object?> json) =>
      _$GetListOrderRequestFromJson(json);
}
