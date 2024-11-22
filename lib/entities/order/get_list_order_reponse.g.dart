// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_list_order_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetListOrderResponseImpl _$$GetListOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetListOrderResponseImpl(
      orders: (json['orders'] as List<dynamic>?)
              ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GetListOrderResponseImplToJson(
        _$GetListOrderResponseImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };
