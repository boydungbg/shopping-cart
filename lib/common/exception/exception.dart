import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';

@freezed
class BaseException with _$BaseException implements Exception {
  const factory BaseException({@Default('') String message}) = _BaseException;

  const factory BaseException.dBException({@Default('') String message}) =
      DBException;

  const factory BaseException.commonException(
      {@Default('') String message,
      Object? error,
      StackTrace? trace}) = CommonException;
}
