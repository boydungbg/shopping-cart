// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_list_cart_item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetListCartItemResponseImpl _$$GetListCartItemResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetListCartItemResponseImpl(
      cartItems: (json['cart_items'] as List<dynamic>?)
              ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GetListCartItemResponseImplToJson(
        _$GetListCartItemResponseImpl instance) =>
    <String, dynamic>{
      'cart_items': instance.cartItems,
    };
