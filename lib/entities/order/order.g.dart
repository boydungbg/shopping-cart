// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      status: (json['status'] as num?)?.toInt() ?? -1,
      orderNo: json['order_no'] as String? ?? "",
      createdAt: (json['created_at'] as num?)?.toInt() ?? 0,
      totalPrice: (json['total_price'] as num?)?.toDouble() ?? 0,
      totalQty: (json['total_qty'] as num?)?.toInt() ?? 0,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'order_no': instance.orderNo,
      'created_at': instance.createdAt,
      'total_price': instance.totalPrice,
      'total_qty': instance.totalQty,
      'items': instance.items,
    };
