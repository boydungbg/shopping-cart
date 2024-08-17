import 'package:shopping_cart/common/di/di.dart';
import 'package:shopping_cart/services/exception_handle.dart';

class BaseService {
  BaseService() {
    _exceptionHandler ??= di.get<HandleException>();
  }
  HandleException? _exceptionHandler;
  HandleException get exceptionHandle {
    _exceptionHandler ??= di.get<HandleException>();
    return _exceptionHandler!;
  }
}
