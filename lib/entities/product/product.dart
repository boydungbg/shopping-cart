import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  static const int isHotProduct = 1;

  const Product._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Product({
    @Default(-1) int id,
    @Default("") String title,
    @Default("") String image,
    @Default(0) double price,
    @Default(0) int isHot,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
