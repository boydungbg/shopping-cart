import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shopping_cart/common/route/route_name.dart';
import 'package:shopping_cart/screen/cart_screen/cart_screen.dart';
import 'package:shopping_cart/screen/empty_screen.dart';
import 'package:shopping_cart/screen/home_screen/home_screen.dart';
import 'package:shopping_cart/screen/splash_screen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

NavigatorState get navigatorState => navigatorKey.currentState!;

class RouteConfig {
  PageRoute onGenerateRoute(RouteSettings settings) {
    final name = settings.name;
    log('To Route: $name');
    final args = settings.arguments;

    switch (name) {
      case RouteName.homeScreen:
        return _materialPage(const HomeScreen(), settings);
      case RouteName.splashScreen:
        return _materialPage(const SplashScreen(), settings);
      case RouteName.cartScreen:
        final CartScreenParams params =
            (args as CartScreenParams?) ?? CartScreenParams(countItemInCart: 0);
        return _materialPage(
            CartScreen(
              params: params,
            ),
            settings);
      default:
        return _materialPage(const EmptyScreen(), settings);
    }
  }

  MaterialPageRoute _materialPage(Widget page, RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => page, settings: settings);
  }
}
