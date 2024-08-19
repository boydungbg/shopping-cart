import 'package:flutter/material.dart';
import 'package:shopping_cart/common/theme/text_theme.dart';

class SD extends InheritedWidget {
  SD({super.key, required super.child});

  final SDTextTheme textStyle = SDTextTheme();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static SD? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SD>();
  }

  static SD of(BuildContext context) {
    final SD? result = maybeOf(context);
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }
}
