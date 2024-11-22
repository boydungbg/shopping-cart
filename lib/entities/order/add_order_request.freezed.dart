// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddOrderRequest _$AddOrderRequestFromJson(Map<String, dynamic> json) {
  return _AddOrderRequest.fromJson(json);
}

/// @nodoc
mixin _$AddOrderRequest {
  int get status => throw _privateConstructorUsedError;
  String get orderNo => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  double get totalQty => throw _privateConstructorUsedError;

  /// Serializes this AddOrderRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddOrderRequestCopyWith<AddOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOrderRequestCopyWith<$Res> {
  factory $AddOrderRequestCopyWith(
          AddOrderRequest value, $Res Function(AddOrderRequest) then) =
      _$AddOrderRequestCopyWithImpl<$Res, AddOrderRequest>;
  @useResult
  $Res call(
      {int status,
      String orderNo,
      int createdAt,
      double totalPrice,
      double totalQty});
}

/// @nodoc
class _$AddOrderRequestCopyWithImpl<$Res, $Val extends AddOrderRequest>
    implements $AddOrderRequestCopyWith<$Res> {
  _$AddOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? orderNo = null,
    Object? createdAt = null,
    Object? totalPrice = null,
    Object? totalQty = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalQty: null == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddOrderRequestImplCopyWith<$Res>
    implements $AddOrderRequestCopyWith<$Res> {
  factory _$$AddOrderRequestImplCopyWith(_$AddOrderRequestImpl value,
          $Res Function(_$AddOrderRequestImpl) then) =
      __$$AddOrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String orderNo,
      int createdAt,
      double totalPrice,
      double totalQty});
}

/// @nodoc
class __$$AddOrderRequestImplCopyWithImpl<$Res>
    extends _$AddOrderRequestCopyWithImpl<$Res, _$AddOrderRequestImpl>
    implements _$$AddOrderRequestImplCopyWith<$Res> {
  __$$AddOrderRequestImplCopyWithImpl(
      _$AddOrderRequestImpl _value, $Res Function(_$AddOrderRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? orderNo = null,
    Object? createdAt = null,
    Object? totalPrice = null,
    Object? totalQty = null,
  }) {
    return _then(_$AddOrderRequestImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalQty: null == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$AddOrderRequestImpl extends _AddOrderRequest {
  const _$AddOrderRequestImpl(
      {this.status = 0,
      this.orderNo = "",
      this.createdAt = 0,
      this.totalPrice = 0,
      this.totalQty = 0})
      : super._();

  factory _$AddOrderRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddOrderRequestImplFromJson(json);

  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final String orderNo;
  @override
  @JsonKey()
  final int createdAt;
  @override
  @JsonKey()
  final double totalPrice;
  @override
  @JsonKey()
  final double totalQty;

  @override
  String toString() {
    return 'AddOrderRequest(status: $status, orderNo: $orderNo, createdAt: $createdAt, totalPrice: $totalPrice, totalQty: $totalQty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrderRequestImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, orderNo, createdAt, totalPrice, totalQty);

  /// Create a copy of AddOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrderRequestImplCopyWith<_$AddOrderRequestImpl> get copyWith =>
      __$$AddOrderRequestImplCopyWithImpl<_$AddOrderRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddOrderRequestImplToJson(
      this,
    );
  }
}

abstract class _AddOrderRequest extends AddOrderRequest {
  const factory _AddOrderRequest(
      {final int status,
      final String orderNo,
      final int createdAt,
      final double totalPrice,
      final double totalQty}) = _$AddOrderRequestImpl;
  const _AddOrderRequest._() : super._();

  factory _AddOrderRequest.fromJson(Map<String, dynamic> json) =
      _$AddOrderRequestImpl.fromJson;

  @override
  int get status;
  @override
  String get orderNo;
  @override
  int get createdAt;
  @override
  double get totalPrice;
  @override
  double get totalQty;

  /// Create a copy of AddOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddOrderRequestImplCopyWith<_$AddOrderRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
