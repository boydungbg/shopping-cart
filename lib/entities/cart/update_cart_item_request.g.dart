// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_cart_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateCartItemRequestImpl _$$UpdateCartItemRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateCartItemRequestImpl(
      productId: (json['product_id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? "",
      image: json['image'] as String? ?? "",
      price: (json['price'] as num?)?.toDouble() ?? 0,
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UpdateCartItemRequestImplToJson(
        _$UpdateCartItemRequestImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
      'quantity': instance.quantity,
    };
