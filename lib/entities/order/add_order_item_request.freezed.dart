// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_order_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddOrderItemRequest _$AddOrderItemRequestFromJson(Map<String, dynamic> json) {
  return _AddOrderItemRequest.fromJson(json);
}

/// @nodoc
mixin _$AddOrderItemRequest {
  int get productId => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  /// Serializes this AddOrderItemRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddOrderItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddOrderItemRequestCopyWith<AddOrderItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOrderItemRequestCopyWith<$Res> {
  factory $AddOrderItemRequestCopyWith(
          AddOrderItemRequest value, $Res Function(AddOrderItemRequest) then) =
      _$AddOrderItemRequestCopyWithImpl<$Res, AddOrderItemRequest>;
  @useResult
  $Res call(
      {int productId,
      int orderId,
      String title,
      String image,
      double price,
      int quantity});
}

/// @nodoc
class _$AddOrderItemRequestCopyWithImpl<$Res, $Val extends AddOrderItemRequest>
    implements $AddOrderItemRequestCopyWith<$Res> {
  _$AddOrderItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddOrderItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? orderId = null,
    Object? title = null,
    Object? image = null,
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddOrderItemRequestImplCopyWith<$Res>
    implements $AddOrderItemRequestCopyWith<$Res> {
  factory _$$AddOrderItemRequestImplCopyWith(_$AddOrderItemRequestImpl value,
          $Res Function(_$AddOrderItemRequestImpl) then) =
      __$$AddOrderItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int productId,
      int orderId,
      String title,
      String image,
      double price,
      int quantity});
}

/// @nodoc
class __$$AddOrderItemRequestImplCopyWithImpl<$Res>
    extends _$AddOrderItemRequestCopyWithImpl<$Res, _$AddOrderItemRequestImpl>
    implements _$$AddOrderItemRequestImplCopyWith<$Res> {
  __$$AddOrderItemRequestImplCopyWithImpl(_$AddOrderItemRequestImpl _value,
      $Res Function(_$AddOrderItemRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrderItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? orderId = null,
    Object? title = null,
    Object? image = null,
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_$AddOrderItemRequestImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$AddOrderItemRequestImpl extends _AddOrderItemRequest {
  const _$AddOrderItemRequestImpl(
      {this.productId = 0,
      this.orderId = 0,
      this.title = "",
      this.image = "",
      this.price = 0,
      this.quantity = 0})
      : super._();

  factory _$AddOrderItemRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddOrderItemRequestImplFromJson(json);

  @override
  @JsonKey()
  final int productId;
  @override
  @JsonKey()
  final int orderId;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final double price;
  @override
  @JsonKey()
  final int quantity;

  @override
  String toString() {
    return 'AddOrderItemRequest(productId: $productId, orderId: $orderId, title: $title, image: $image, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrderItemRequestImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, productId, orderId, title, image, price, quantity);

  /// Create a copy of AddOrderItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrderItemRequestImplCopyWith<_$AddOrderItemRequestImpl> get copyWith =>
      __$$AddOrderItemRequestImplCopyWithImpl<_$AddOrderItemRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddOrderItemRequestImplToJson(
      this,
    );
  }
}

abstract class _AddOrderItemRequest extends AddOrderItemRequest {
  const factory _AddOrderItemRequest(
      {final int productId,
      final int orderId,
      final String title,
      final String image,
      final double price,
      final int quantity}) = _$AddOrderItemRequestImpl;
  const _AddOrderItemRequest._() : super._();

  factory _AddOrderItemRequest.fromJson(Map<String, dynamic> json) =
      _$AddOrderItemRequestImpl.fromJson;

  @override
  int get productId;
  @override
  int get orderId;
  @override
  String get title;
  @override
  String get image;
  @override
  double get price;
  @override
  int get quantity;

  /// Create a copy of AddOrderItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddOrderItemRequestImplCopyWith<_$AddOrderItemRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
