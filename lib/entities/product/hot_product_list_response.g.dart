// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_product_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotProductListResponseImpl _$$HotProductListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HotProductListResponseImpl(
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HotProductListResponseImplToJson(
        _$HotProductListResponseImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
