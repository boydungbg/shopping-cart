// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_cart_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddCartItemRequest _$AddCartItemRequestFromJson(Map<String, dynamic> json) {
  return _AddCartItemRequest.fromJson(json);
}

/// @nodoc
mixin _$AddCartItemRequest {
  int get productId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  /// Serializes this AddCartItemRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddCartItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddCartItemRequestCopyWith<AddCartItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCartItemRequestCopyWith<$Res> {
  factory $AddCartItemRequestCopyWith(
          AddCartItemRequest value, $Res Function(AddCartItemRequest) then) =
      _$AddCartItemRequestCopyWithImpl<$Res, AddCartItemRequest>;
  @useResult
  $Res call(
      {int productId, String title, String image, double price, int quantity});
}

/// @nodoc
class _$AddCartItemRequestCopyWithImpl<$Res, $Val extends AddCartItemRequest>
    implements $AddCartItemRequestCopyWith<$Res> {
  _$AddCartItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCartItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
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
abstract class _$$AddCartItemRequestImplCopyWith<$Res>
    implements $AddCartItemRequestCopyWith<$Res> {
  factory _$$AddCartItemRequestImplCopyWith(_$AddCartItemRequestImpl value,
          $Res Function(_$AddCartItemRequestImpl) then) =
      __$$AddCartItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int productId, String title, String image, double price, int quantity});
}

/// @nodoc
class __$$AddCartItemRequestImplCopyWithImpl<$Res>
    extends _$AddCartItemRequestCopyWithImpl<$Res, _$AddCartItemRequestImpl>
    implements _$$AddCartItemRequestImplCopyWith<$Res> {
  __$$AddCartItemRequestImplCopyWithImpl(_$AddCartItemRequestImpl _value,
      $Res Function(_$AddCartItemRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCartItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? title = null,
    Object? image = null,
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_$AddCartItemRequestImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
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
class _$AddCartItemRequestImpl extends _AddCartItemRequest {
  const _$AddCartItemRequestImpl(
      {this.productId = 0,
      this.title = "",
      this.image = "",
      this.price = 0,
      this.quantity = 0})
      : super._();

  factory _$AddCartItemRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddCartItemRequestImplFromJson(json);

  @override
  @JsonKey()
  final int productId;
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
    return 'AddCartItemRequest(productId: $productId, title: $title, image: $image, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCartItemRequestImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, title, image, price, quantity);

  /// Create a copy of AddCartItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCartItemRequestImplCopyWith<_$AddCartItemRequestImpl> get copyWith =>
      __$$AddCartItemRequestImplCopyWithImpl<_$AddCartItemRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCartItemRequestImplToJson(
      this,
    );
  }
}

abstract class _AddCartItemRequest extends AddCartItemRequest {
  const factory _AddCartItemRequest(
      {final int productId,
      final String title,
      final String image,
      final double price,
      final int quantity}) = _$AddCartItemRequestImpl;
  const _AddCartItemRequest._() : super._();

  factory _AddCartItemRequest.fromJson(Map<String, dynamic> json) =
      _$AddCartItemRequestImpl.fromJson;

  @override
  int get productId;
  @override
  String get title;
  @override
  String get image;
  @override
  double get price;
  @override
  int get quantity;

  /// Create a copy of AddCartItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCartItemRequestImplCopyWith<_$AddCartItemRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
