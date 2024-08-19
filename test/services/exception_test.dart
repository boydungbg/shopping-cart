import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_cart/common/exception/exception.dart';
import 'package:shopping_cart/services/exception_handle.dart';

void main() {
  late ExceptionHandleImpl exceptionHandler;

  setUp(() {
    exceptionHandler = ExceptionHandleImpl();
  });

  test('should return the same BaseException when it is passed', () {
    // Arrange
    const baseException = CommonException(message: 'Common error');

    // Act
    final result = exceptionHandler.handle(baseException);

    // Assert
    expect(result, isA<CommonException>());
    expect(result, baseException); // It should return the exact same instance
  });

  test('should return CommonException when a generic exception is passed', () {
    // Arrange
    final genericException = Exception('Generic error');

    // Act
    final result = exceptionHandler.handle(genericException);

    // Assert
    expect(result, isA<CommonException>());
    expect(result.message, 'Exception: Generic error');
  });
}
