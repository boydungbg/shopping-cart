// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddOrderRequestImpl _$$AddOrderRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddOrderRequestImpl(
      status: (json['status'] as num?)?.toInt() ?? 0,
      orderNo: json['order_no'] as String? ?? "",
      createdAt: (json['created_at'] as num?)?.toInt() ?? 0,
      totalPrice: (json['total_price'] as num?)?.toDouble() ?? 0,
      totalQty: (json['total_qty'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$AddOrderRequestImplToJson(
        _$AddOrderRequestImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'order_no': instance.orderNo,
      'created_at': instance.createdAt,
      'total_price': instance.totalPrice,
      'total_qty': instance.totalQty,
    };
