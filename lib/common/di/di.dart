import 'package:get_it/get_it.dart';
import 'package:shopping_cart/common/route/route.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_cart/common/di/di.config.dart';

final di = GetIt.asNewInstance()..allowReassignment = true;

@injectableInit
Future<void> initDi() async {
  di.registerSingleton<RouteConfig>(RouteConfig());
  di.init();
}
