import 'package:injectable/injectable.dart';
import 'package:shopping_cart/common/exception/exception.dart';
import 'package:sqflite/sqflite.dart';

abstract class HandleException {
  BaseException handle(any);
}

@Injectable(as: HandleException)
class ExceptionHandleImpl implements HandleException {
  @override
  BaseException handle(any) {
    if (any is DatabaseException) {
      return DBException(message: any.toString());
    }
    if (any is BaseException) {
      return any;
    }
    return CommonException(message: any.toString());
  }
}
