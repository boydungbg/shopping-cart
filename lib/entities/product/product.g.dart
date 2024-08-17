// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      title: json['title'] as String? ?? "",
      image: json['image'] as String? ?? "",
      price: (json['price'] as num?)?.toDouble() ?? 0,
      isHot: (json['is_hot'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
      'is_hot': instance.isHot,
    };
