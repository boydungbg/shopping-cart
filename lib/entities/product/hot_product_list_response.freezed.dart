// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hot_product_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotProductListResponse _$HotProductListResponseFromJson(
    Map<String, dynamic> json) {
  return _HotProductListResponse.fromJson(json);
}

/// @nodoc
mixin _$HotProductListResponse {
  List<Product> get products => throw _privateConstructorUsedError;

  /// Serializes this HotProductListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotProductListResponseCopyWith<HotProductListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotProductListResponseCopyWith<$Res> {
  factory $HotProductListResponseCopyWith(HotProductListResponse value,
          $Res Function(HotProductListResponse) then) =
      _$HotProductListResponseCopyWithImpl<$Res, HotProductListResponse>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class _$HotProductListResponseCopyWithImpl<$Res,
        $Val extends HotProductListResponse>
    implements $HotProductListResponseCopyWith<$Res> {
  _$HotProductListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotProductListResponseImplCopyWith<$Res>
    implements $HotProductListResponseCopyWith<$Res> {
  factory _$$HotProductListResponseImplCopyWith(
          _$HotProductListResponseImpl value,
          $Res Function(_$HotProductListResponseImpl) then) =
      __$$HotProductListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$HotProductListResponseImplCopyWithImpl<$Res>
    extends _$HotProductListResponseCopyWithImpl<$Res,
        _$HotProductListResponseImpl>
    implements _$$HotProductListResponseImplCopyWith<$Res> {
  __$$HotProductListResponseImplCopyWithImpl(
      _$HotProductListResponseImpl _value,
      $Res Function(_$HotProductListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HotProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$HotProductListResponseImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$HotProductListResponseImpl extends _HotProductListResponse {
  const _$HotProductListResponseImpl({final List<Product> products = const []})
      : _products = products,
        super._();

  factory _$HotProductListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotProductListResponseImplFromJson(json);

  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'HotProductListResponse(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotProductListResponseImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of HotProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotProductListResponseImplCopyWith<_$HotProductListResponseImpl>
      get copyWith => __$$HotProductListResponseImplCopyWithImpl<
          _$HotProductListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotProductListResponseImplToJson(
      this,
    );
  }
}

abstract class _HotProductListResponse extends HotProductListResponse {
  const factory _HotProductListResponse({final List<Product> products}) =
      _$HotProductListResponseImpl;
  const _HotProductListResponse._() : super._();

  factory _HotProductListResponse.fromJson(Map<String, dynamic> json) =
      _$HotProductListResponseImpl.fromJson;

  @override
  List<Product> get products;

  /// Create a copy of HotProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotProductListResponseImplCopyWith<_$HotProductListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
