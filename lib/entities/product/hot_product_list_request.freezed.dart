// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hot_product_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotProductListRequest _$HotProductListRequestFromJson(
    Map<String, dynamic> json) {
  return _HotProductListRequest.fromJson(json);
}

/// @nodoc
mixin _$HotProductListRequest {
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this HotProductListRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotProductListRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotProductListRequestCopyWith<HotProductListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotProductListRequestCopyWith<$Res> {
  factory $HotProductListRequestCopyWith(HotProductListRequest value,
          $Res Function(HotProductListRequest) then) =
      _$HotProductListRequestCopyWithImpl<$Res, HotProductListRequest>;
  @useResult
  $Res call({int limit});
}

/// @nodoc
class _$HotProductListRequestCopyWithImpl<$Res,
        $Val extends HotProductListRequest>
    implements $HotProductListRequestCopyWith<$Res> {
  _$HotProductListRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotProductListRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotProductListRequestImplCopyWith<$Res>
    implements $HotProductListRequestCopyWith<$Res> {
  factory _$$HotProductListRequestImplCopyWith(
          _$HotProductListRequestImpl value,
          $Res Function(_$HotProductListRequestImpl) then) =
      __$$HotProductListRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int limit});
}

/// @nodoc
class __$$HotProductListRequestImplCopyWithImpl<$Res>
    extends _$HotProductListRequestCopyWithImpl<$Res,
        _$HotProductListRequestImpl>
    implements _$$HotProductListRequestImplCopyWith<$Res> {
  __$$HotProductListRequestImplCopyWithImpl(_$HotProductListRequestImpl _value,
      $Res Function(_$HotProductListRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of HotProductListRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
  }) {
    return _then(_$HotProductListRequestImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$HotProductListRequestImpl extends _HotProductListRequest {
  const _$HotProductListRequestImpl({this.limit = 10}) : super._();

  factory _$HotProductListRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotProductListRequestImplFromJson(json);

  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'HotProductListRequest(limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotProductListRequestImpl &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit);

  /// Create a copy of HotProductListRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotProductListRequestImplCopyWith<_$HotProductListRequestImpl>
      get copyWith => __$$HotProductListRequestImplCopyWithImpl<
          _$HotProductListRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotProductListRequestImplToJson(
      this,
    );
  }
}

abstract class _HotProductListRequest extends HotProductListRequest {
  const factory _HotProductListRequest({final int limit}) =
      _$HotProductListRequestImpl;
  const _HotProductListRequest._() : super._();

  factory _HotProductListRequest.fromJson(Map<String, dynamic> json) =
      _$HotProductListRequestImpl.fromJson;

  @override
  int get limit;

  /// Create a copy of HotProductListRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotProductListRequestImplCopyWith<_$HotProductListRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
