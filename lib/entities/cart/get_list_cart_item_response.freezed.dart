// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_list_cart_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetListCartItemResponse _$GetListCartItemResponseFromJson(
    Map<String, dynamic> json) {
  return _GetListCartItemResponse.fromJson(json);
}

/// @nodoc
mixin _$GetListCartItemResponse {
  List<CartItem> get cartItems => throw _privateConstructorUsedError;

  /// Serializes this GetListCartItemResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetListCartItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetListCartItemResponseCopyWith<GetListCartItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListCartItemResponseCopyWith<$Res> {
  factory $GetListCartItemResponseCopyWith(GetListCartItemResponse value,
          $Res Function(GetListCartItemResponse) then) =
      _$GetListCartItemResponseCopyWithImpl<$Res, GetListCartItemResponse>;
  @useResult
  $Res call({List<CartItem> cartItems});
}

/// @nodoc
class _$GetListCartItemResponseCopyWithImpl<$Res,
        $Val extends GetListCartItemResponse>
    implements $GetListCartItemResponseCopyWith<$Res> {
  _$GetListCartItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetListCartItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_value.copyWith(
      cartItems: null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetListCartItemResponseImplCopyWith<$Res>
    implements $GetListCartItemResponseCopyWith<$Res> {
  factory _$$GetListCartItemResponseImplCopyWith(
          _$GetListCartItemResponseImpl value,
          $Res Function(_$GetListCartItemResponseImpl) then) =
      __$$GetListCartItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartItem> cartItems});
}

/// @nodoc
class __$$GetListCartItemResponseImplCopyWithImpl<$Res>
    extends _$GetListCartItemResponseCopyWithImpl<$Res,
        _$GetListCartItemResponseImpl>
    implements _$$GetListCartItemResponseImplCopyWith<$Res> {
  __$$GetListCartItemResponseImplCopyWithImpl(
      _$GetListCartItemResponseImpl _value,
      $Res Function(_$GetListCartItemResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetListCartItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$GetListCartItemResponseImpl(
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$GetListCartItemResponseImpl extends _GetListCartItemResponse {
  const _$GetListCartItemResponseImpl(
      {final List<CartItem> cartItems = const []})
      : _cartItems = cartItems,
        super._();

  factory _$GetListCartItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetListCartItemResponseImplFromJson(json);

  final List<CartItem> _cartItems;
  @override
  @JsonKey()
  List<CartItem> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'GetListCartItemResponse(cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListCartItemResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  /// Create a copy of GetListCartItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListCartItemResponseImplCopyWith<_$GetListCartItemResponseImpl>
      get copyWith => __$$GetListCartItemResponseImplCopyWithImpl<
          _$GetListCartItemResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetListCartItemResponseImplToJson(
      this,
    );
  }
}

abstract class _GetListCartItemResponse extends GetListCartItemResponse {
  const factory _GetListCartItemResponse({final List<CartItem> cartItems}) =
      _$GetListCartItemResponseImpl;
  const _GetListCartItemResponse._() : super._();

  factory _GetListCartItemResponse.fromJson(Map<String, dynamic> json) =
      _$GetListCartItemResponseImpl.fromJson;

  @override
  List<CartItem> get cartItems;

  /// Create a copy of GetListCartItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetListCartItemResponseImplCopyWith<_$GetListCartItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
