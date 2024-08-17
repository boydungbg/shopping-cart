// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaseException {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message) $default, {
    required TResult Function(String message) dBException,
    required TResult Function(String message, Object? error, StackTrace? trace)
        commonException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String message)? $default, {
    TResult? Function(String message)? dBException,
    TResult? Function(String message, Object? error, StackTrace? trace)?
        commonException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message)? $default, {
    TResult Function(String message)? dBException,
    TResult Function(String message, Object? error, StackTrace? trace)?
        commonException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BaseException value) $default, {
    required TResult Function(DBException value) dBException,
    required TResult Function(CommonException value) commonException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BaseException value)? $default, {
    TResult? Function(DBException value)? dBException,
    TResult? Function(CommonException value)? commonException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BaseException value)? $default, {
    TResult Function(DBException value)? dBException,
    TResult Function(CommonException value)? commonException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BaseException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseExceptionCopyWith<BaseException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseExceptionCopyWith<$Res> {
  factory $BaseExceptionCopyWith(
          BaseException value, $Res Function(BaseException) then) =
      _$BaseExceptionCopyWithImpl<$Res, BaseException>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$BaseExceptionCopyWithImpl<$Res, $Val extends BaseException>
    implements $BaseExceptionCopyWith<$Res> {
  _$BaseExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseExceptionImplCopyWith<$Res>
    implements $BaseExceptionCopyWith<$Res> {
  factory _$$BaseExceptionImplCopyWith(
          _$BaseExceptionImpl value, $Res Function(_$BaseExceptionImpl) then) =
      __$$BaseExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BaseExceptionImplCopyWithImpl<$Res>
    extends _$BaseExceptionCopyWithImpl<$Res, _$BaseExceptionImpl>
    implements _$$BaseExceptionImplCopyWith<$Res> {
  __$$BaseExceptionImplCopyWithImpl(
      _$BaseExceptionImpl _value, $Res Function(_$BaseExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BaseExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BaseExceptionImpl implements _BaseException {
  const _$BaseExceptionImpl({this.message = ''});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'BaseException(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BaseException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseExceptionImplCopyWith<_$BaseExceptionImpl> get copyWith =>
      __$$BaseExceptionImplCopyWithImpl<_$BaseExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message) $default, {
    required TResult Function(String message) dBException,
    required TResult Function(String message, Object? error, StackTrace? trace)
        commonException,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String message)? $default, {
    TResult? Function(String message)? dBException,
    TResult? Function(String message, Object? error, StackTrace? trace)?
        commonException,
  }) {
    return $default?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message)? $default, {
    TResult Function(String message)? dBException,
    TResult Function(String message, Object? error, StackTrace? trace)?
        commonException,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BaseException value) $default, {
    required TResult Function(DBException value) dBException,
    required TResult Function(CommonException value) commonException,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BaseException value)? $default, {
    TResult? Function(DBException value)? dBException,
    TResult? Function(CommonException value)? commonException,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BaseException value)? $default, {
    TResult Function(DBException value)? dBException,
    TResult Function(CommonException value)? commonException,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _BaseException implements BaseException {
  const factory _BaseException({final String message}) = _$BaseExceptionImpl;

  @override
  String get message;

  /// Create a copy of BaseException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseExceptionImplCopyWith<_$BaseExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DBExceptionImplCopyWith<$Res>
    implements $BaseExceptionCopyWith<$Res> {
  factory _$$DBExceptionImplCopyWith(
          _$DBExceptionImpl value, $Res Function(_$DBExceptionImpl) then) =
      __$$DBExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DBExceptionImplCopyWithImpl<$Res>
    extends _$BaseExceptionCopyWithImpl<$Res, _$DBExceptionImpl>
    implements _$$DBExceptionImplCopyWith<$Res> {
  __$$DBExceptionImplCopyWithImpl(
      _$DBExceptionImpl _value, $Res Function(_$DBExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DBExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DBExceptionImpl implements DBException {
  const _$DBExceptionImpl({this.message = ''});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'BaseException.dBException(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DBExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BaseException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DBExceptionImplCopyWith<_$DBExceptionImpl> get copyWith =>
      __$$DBExceptionImplCopyWithImpl<_$DBExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message) $default, {
    required TResult Function(String message) dBException,
    required TResult Function(String message, Object? error, StackTrace? trace)
        commonException,
  }) {
    return dBException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String message)? $default, {
    TResult? Function(String message)? dBException,
    TResult? Function(String message, Object? error, StackTrace? trace)?
        commonException,
  }) {
    return dBException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message)? $default, {
    TResult Function(String message)? dBException,
    TResult Function(String message, Object? error, StackTrace? trace)?
        commonException,
    required TResult orElse(),
  }) {
    if (dBException != null) {
      return dBException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BaseException value) $default, {
    required TResult Function(DBException value) dBException,
    required TResult Function(CommonException value) commonException,
  }) {
    return dBException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BaseException value)? $default, {
    TResult? Function(DBException value)? dBException,
    TResult? Function(CommonException value)? commonException,
  }) {
    return dBException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BaseException value)? $default, {
    TResult Function(DBException value)? dBException,
    TResult Function(CommonException value)? commonException,
    required TResult orElse(),
  }) {
    if (dBException != null) {
      return dBException(this);
    }
    return orElse();
  }
}

abstract class DBException implements BaseException {
  const factory DBException({final String message}) = _$DBExceptionImpl;

  @override
  String get message;

  /// Create a copy of BaseException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DBExceptionImplCopyWith<_$DBExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommonExceptionImplCopyWith<$Res>
    implements $BaseExceptionCopyWith<$Res> {
  factory _$$CommonExceptionImplCopyWith(_$CommonExceptionImpl value,
          $Res Function(_$CommonExceptionImpl) then) =
      __$$CommonExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Object? error, StackTrace? trace});
}

/// @nodoc
class __$$CommonExceptionImplCopyWithImpl<$Res>
    extends _$BaseExceptionCopyWithImpl<$Res, _$CommonExceptionImpl>
    implements _$$CommonExceptionImplCopyWith<$Res> {
  __$$CommonExceptionImplCopyWithImpl(
      _$CommonExceptionImpl _value, $Res Function(_$CommonExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = freezed,
    Object? trace = freezed,
  }) {
    return _then(_$CommonExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error ? _value.error : error,
      trace: freezed == trace
          ? _value.trace
          : trace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$CommonExceptionImpl implements CommonException {
  const _$CommonExceptionImpl({this.message = '', this.error, this.trace});

  @override
  @JsonKey()
  final String message;
  @override
  final Object? error;
  @override
  final StackTrace? trace;

  @override
  String toString() {
    return 'BaseException.commonException(message: $message, error: $error, trace: $trace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.trace, trace) || other.trace == trace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(error), trace);

  /// Create a copy of BaseException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonExceptionImplCopyWith<_$CommonExceptionImpl> get copyWith =>
      __$$CommonExceptionImplCopyWithImpl<_$CommonExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String message) $default, {
    required TResult Function(String message) dBException,
    required TResult Function(String message, Object? error, StackTrace? trace)
        commonException,
  }) {
    return commonException(message, error, trace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String message)? $default, {
    TResult? Function(String message)? dBException,
    TResult? Function(String message, Object? error, StackTrace? trace)?
        commonException,
  }) {
    return commonException?.call(message, error, trace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String message)? $default, {
    TResult Function(String message)? dBException,
    TResult Function(String message, Object? error, StackTrace? trace)?
        commonException,
    required TResult orElse(),
  }) {
    if (commonException != null) {
      return commonException(message, error, trace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BaseException value) $default, {
    required TResult Function(DBException value) dBException,
    required TResult Function(CommonException value) commonException,
  }) {
    return commonException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BaseException value)? $default, {
    TResult? Function(DBException value)? dBException,
    TResult? Function(CommonException value)? commonException,
  }) {
    return commonException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BaseException value)? $default, {
    TResult Function(DBException value)? dBException,
    TResult Function(CommonException value)? commonException,
    required TResult orElse(),
  }) {
    if (commonException != null) {
      return commonException(this);
    }
    return orElse();
  }
}

abstract class CommonException implements BaseException {
  const factory CommonException(
      {final String message,
      final Object? error,
      final StackTrace? trace}) = _$CommonExceptionImpl;

  @override
  String get message;
  Object? get error;
  StackTrace? get trace;

  /// Create a copy of BaseException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonExceptionImplCopyWith<_$CommonExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
