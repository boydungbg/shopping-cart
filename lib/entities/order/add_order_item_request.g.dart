// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_order_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddOrderItemRequestImpl _$$AddOrderItemRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddOrderItemRequestImpl(
      productId: (json['product_id'] as num?)?.toInt() ?? 0,
      orderId: (json['order_id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? "",
      image: json['image'] as String? ?? "",
      price: (json['price'] as num?)?.toDouble() ?? 0,
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$AddOrderItemRequestImplToJson(
        _$AddOrderItemRequestImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'order_id': instance.orderId,
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
      'quantity': instance.quantity,
    };