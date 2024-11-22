// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_list_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetListOrderRequestImpl _$$GetListOrderRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetListOrderRequestImpl(
      page: (json['page'] as num?)?.toInt() ?? 0,
      perPage: (json['per_page'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$GetListOrderRequestImplToJson(
        _$GetListOrderRequestImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
    };
