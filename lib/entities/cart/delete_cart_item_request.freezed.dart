// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_cart_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteCartItemRequest _$DeleteCartItemRequestFromJson(
    Map<String, dynamic> json) {
  return _DeleteCartItemRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteCartItemRequest {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this DeleteCartItemRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteCartItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteCartItemRequestCopyWith<DeleteCartItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCartItemRequestCopyWith<$Res> {
  factory $DeleteCartItemRequestCopyWith(DeleteCartItemRequest value,
          $Res Function(DeleteCartItemRequest) then) =
      _$DeleteCartItemRequestCopyWithImpl<$Res, DeleteCartItemRequest>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$DeleteCartItemRequestCopyWithImpl<$Res,
        $Val extends DeleteCartItemRequest>
    implements $DeleteCartItemRequestCopyWith<$Res> {
  _$DeleteCartItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteCartItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteCartItemRequestImplCopyWith<$Res>
    implements $DeleteCartItemRequestCopyWith<$Res> {
  factory _$$DeleteCartItemRequestImplCopyWith(
          _$DeleteCartItemRequestImpl value,
          $Res Function(_$DeleteCartItemRequestImpl) then) =
      __$$DeleteCartItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteCartItemRequestImplCopyWithImpl<$Res>
    extends _$DeleteCartItemRequestCopyWithImpl<$Res,
        _$DeleteCartItemRequestImpl>
    implements _$$DeleteCartItemRequestImplCopyWith<$Res> {
  __$$DeleteCartItemRequestImplCopyWithImpl(_$DeleteCartItemRequestImpl _value,
      $Res Function(_$DeleteCartItemRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteCartItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteCartItemRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$DeleteCartItemRequestImpl extends _DeleteCartItemRequest {
  const _$DeleteCartItemRequestImpl({this.id = 0}) : super._();

  factory _$DeleteCartItemRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteCartItemRequestImplFromJson(json);

  @override
  @JsonKey()
  final int id;

  @override
  String toString() {
    return 'DeleteCartItemRequest(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCartItemRequestImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DeleteCartItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCartItemRequestImplCopyWith<_$DeleteCartItemRequestImpl>
      get copyWith => __$$DeleteCartItemRequestImplCopyWithImpl<
          _$DeleteCartItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteCartItemRequestImplToJson(
      this,
    );
  }
}

abstract class _DeleteCartItemRequest extends DeleteCartItemRequest {
  const factory _DeleteCartItemRequest({final int id}) =
      _$DeleteCartItemRequestImpl;
  const _DeleteCartItemRequest._() : super._();

  factory _DeleteCartItemRequest.fromJson(Map<String, dynamic> json) =
      _$DeleteCartItemRequestImpl.fromJson;

  @override
  int get id;

  /// Create a copy of DeleteCartItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCartItemRequestImplCopyWith<_$DeleteCartItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
