import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
class CartItem with _$CartItem {
  const CartItem._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CartItem({
    @Default(0) int id,
    @Default(0) int productId,
    @Default("") String title,
    @Default("") String image,
    @Default(0) double price,
    @Default(0) int quantity,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, Object?> json) =>
      _$CartItemFromJson(json);
}
