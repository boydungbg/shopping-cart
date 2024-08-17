// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_list_cart_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetListCartItemRequest _$GetListCartItemRequestFromJson(
    Map<String, dynamic> json) {
  return _GetListCartItemRequest.fromJson(json);
}

/// @nodoc
mixin _$GetListCartItemRequest {
  /// Serializes this GetListCartItemRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListCartItemRequestCopyWith<$Res> {
  factory $GetListCartItemRequestCopyWith(GetListCartItemRequest value,
          $Res Function(GetListCartItemRequest) then) =
      _$GetListCartItemRequestCopyWithImpl<$Res, GetListCartItemRequest>;
}

/// @nodoc
class _$GetListCartItemRequestCopyWithImpl<$Res,
        $Val extends GetListCartItemRequest>
    implements $GetListCartItemRequestCopyWith<$Res> {
  _$GetListCartItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetListCartItemRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetListCartItemRequestImplCopyWith<$Res> {
  factory _$$GetListCartItemRequestImplCopyWith(
          _$GetListCartItemRequestImpl value,
          $Res Function(_$GetListCartItemRequestImpl) then) =
      __$$GetListCartItemRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetListCartItemRequestImplCopyWithImpl<$Res>
    extends _$GetListCartItemRequestCopyWithImpl<$Res,
        _$GetListCartItemRequestImpl>
    implements _$$GetListCartItemRequestImplCopyWith<$Res> {
  __$$GetListCartItemRequestImplCopyWithImpl(
      _$GetListCartItemRequestImpl _value,
      $Res Function(_$GetListCartItemRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetListCartItemRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$GetListCartItemRequestImpl extends _GetListCartItemRequest {
  const _$GetListCartItemRequestImpl() : super._();

  factory _$GetListCartItemRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetListCartItemRequestImplFromJson(json);

  @override
  String toString() {
    return 'GetListCartItemRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListCartItemRequestImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$GetListCartItemRequestImplToJson(
      this,
    );
  }
}

abstract class _GetListCartItemRequest extends GetListCartItemRequest {
  const factory _GetListCartItemRequest() = _$GetListCartItemRequestImpl;
  const _GetListCartItemRequest._() : super._();

  factory _GetListCartItemRequest.fromJson(Map<String, dynamic> json) =
      _$GetListCartItemRequestImpl.fromJson;
}
