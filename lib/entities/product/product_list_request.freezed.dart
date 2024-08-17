// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductListRequest _$ProductListRequestFromJson(Map<String, dynamic> json) {
  return _ProductListRequest.fromJson(json);
}

/// @nodoc
mixin _$ProductListRequest {
  int get limit => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  /// Serializes this ProductListRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductListRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListRequestCopyWith<ProductListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListRequestCopyWith<$Res> {
  factory $ProductListRequestCopyWith(
          ProductListRequest value, $Res Function(ProductListRequest) then) =
      _$ProductListRequestCopyWithImpl<$Res, ProductListRequest>;
  @useResult
  $Res call({int limit, int page});
}

/// @nodoc
class _$ProductListRequestCopyWithImpl<$Res, $Val extends ProductListRequest>
    implements $ProductListRequestCopyWith<$Res> {
  _$ProductListRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListRequestImplCopyWith<$Res>
    implements $ProductListRequestCopyWith<$Res> {
  factory _$$ProductListRequestImplCopyWith(_$ProductListRequestImpl value,
          $Res Function(_$ProductListRequestImpl) then) =
      __$$ProductListRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int limit, int page});
}

/// @nodoc
class __$$ProductListRequestImplCopyWithImpl<$Res>
    extends _$ProductListRequestCopyWithImpl<$Res, _$ProductListRequestImpl>
    implements _$$ProductListRequestImplCopyWith<$Res> {
  __$$ProductListRequestImplCopyWithImpl(_$ProductListRequestImpl _value,
      $Res Function(_$ProductListRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? page = null,
  }) {
    return _then(_$ProductListRequestImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ProductListRequestImpl extends _ProductListRequest {
  const _$ProductListRequestImpl({this.limit = 10, this.page = 1}) : super._();

  factory _$ProductListRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListRequestImplFromJson(json);

  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'ProductListRequest(limit: $limit, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListRequestImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit, page);

  /// Create a copy of ProductListRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListRequestImplCopyWith<_$ProductListRequestImpl> get copyWith =>
      __$$ProductListRequestImplCopyWithImpl<_$ProductListRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListRequestImplToJson(
      this,
    );
  }
}

abstract class _ProductListRequest extends ProductListRequest {
  const factory _ProductListRequest({final int limit, final int page}) =
      _$ProductListRequestImpl;
  const _ProductListRequest._() : super._();

  factory _ProductListRequest.fromJson(Map<String, dynamic> json) =
      _$ProductListRequestImpl.fromJson;

  @override
  int get limit;
  @override
  int get page;

  /// Create a copy of ProductListRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListRequestImplCopyWith<_$ProductListRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
