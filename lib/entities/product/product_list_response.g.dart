// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductListResponseImpl _$$ProductListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductListResponseImpl(
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      perPage: (json['per_page'] as num?)?.toInt() ?? 0,
      maxPage: (json['max_page'] as num?)?.toInt() ?? 0,
      count: (json['count'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProductListResponseImplToJson(
        _$ProductListResponseImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'per_page': instance.perPage,
      'max_page': instance.maxPage,
      'count': instance.count,
      'page': instance.page,
    };
