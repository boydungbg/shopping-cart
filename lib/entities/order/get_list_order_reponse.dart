import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_cart/entities/order/order.dart';

part 'get_list_order_reponse.freezed.dart';

part 'get_list_order_reponse.g.dart';

@freezed
class GetListOrderResponse with _$GetListOrderResponse {
  const GetListOrderResponse._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetListOrderResponse({
    @Default([]) List<Order> orders,
  }) = _GetListOrderResponse;

  factory GetListOrderResponse.fromJson(Map<String, Object?> json) =>
      _$GetListOrderResponseFromJson(json);
}
