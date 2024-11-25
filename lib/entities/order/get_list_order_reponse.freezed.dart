// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_list_order_reponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetListOrderResponse _$GetListOrderResponseFromJson(Map<String, dynamic> json) {
  return _GetListOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$GetListOrderResponse {
  List<Order> get orders => throw _privateConstructorUsedError;

  /// Serializes this GetListOrderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetListOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetListOrderResponseCopyWith<GetListOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListOrderResponseCopyWith<$Res> {
  factory $GetListOrderResponseCopyWith(GetListOrderResponse value,
          $Res Function(GetListOrderResponse) then) =
      _$GetListOrderResponseCopyWithImpl<$Res, GetListOrderResponse>;
  @useResult
  $Res call({List<Order> orders});
}

/// @nodoc
class _$GetListOrderResponseCopyWithImpl<$Res,
        $Val extends GetListOrderResponse>
    implements $GetListOrderResponseCopyWith<$Res> {
  _$GetListOrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetListOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetListOrderResponseImplCopyWith<$Res>
    implements $GetListOrderResponseCopyWith<$Res> {
  factory _$$GetListOrderResponseImplCopyWith(_$GetListOrderResponseImpl value,
          $Res Function(_$GetListOrderResponseImpl) then) =
      __$$GetListOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Order> orders});
}

/// @nodoc
class __$$GetListOrderResponseImplCopyWithImpl<$Res>
    extends _$GetListOrderResponseCopyWithImpl<$Res, _$GetListOrderResponseImpl>
    implements _$$GetListOrderResponseImplCopyWith<$Res> {
  __$$GetListOrderResponseImplCopyWithImpl(_$GetListOrderResponseImpl _value,
      $Res Function(_$GetListOrderResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetListOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$GetListOrderResponseImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$GetListOrderResponseImpl extends _GetListOrderResponse {
  const _$GetListOrderResponseImpl({final List<Order> orders = const []})
      : _orders = orders,
        super._();

  factory _$GetListOrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetListOrderResponseImplFromJson(json);

  final List<Order> _orders;
  @override
  @JsonKey()
  List<Order> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'GetListOrderResponse(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListOrderResponseImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  /// Create a copy of GetListOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListOrderResponseImplCopyWith<_$GetListOrderResponseImpl>
      get copyWith =>
          __$$GetListOrderResponseImplCopyWithImpl<_$GetListOrderResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetListOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _GetListOrderResponse extends GetListOrderResponse {
  const factory _GetListOrderResponse({final List<Order> orders}) =
      _$GetListOrderResponseImpl;
  const _GetListOrderResponse._() : super._();

  factory _GetListOrderResponse.fromJson(Map<String, dynamic> json) =
      _$GetListOrderResponseImpl.fromJson;

  @override
  List<Order> get orders;

  /// Create a copy of GetListOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetListOrderResponseImplCopyWith<_$GetListOrderResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
