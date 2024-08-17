// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductListRequestImpl _$$ProductListRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductListRequestImpl(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      page: (json['page'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$$ProductListRequestImplToJson(
        _$ProductListRequestImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'page': instance.page,
    };
