import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shopping_cart/common/di/di.dart';
import 'package:shopping_cart/common/locale/locale.dart';
import 'package:shopping_cart/common/route/route.dart';
import 'package:shopping_cart/common/route/route_name.dart';
import 'package:shopping_cart/generated/l10n.dart';
import 'package:shopping_cart/repository/local/product_repository.dart';
import 'package:shopping_cart/repository/sqflite_database.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    //Init Depenency
    await initDi();
    await di.get<SqfliteDatabase>().openDb();
    runApp(const MyApp());
  }, (err, trace) {
    log(err.toString(), stackTrace: trace);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart',
      theme: ThemeData(
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.orangeAccent,
        ),
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.orangeAccent,
            centerTitle: true,
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: RouteName.splashScreen,
      onGenerateRoute: (settings) =>
          di.get<RouteConfig>().onGenerateRoute(settings),
      navigatorKey: navigatorKey,
      localeResolutionCallback: (locale, supportedLocales) {
        final hasSupported = supportedLocales
            .any((element) => element.languageCode == locale?.languageCode);
        if (hasSupported) {
          return locale;
        }
        return LocaleConfigs.defaultLocale;
      },
    );
  }
}
