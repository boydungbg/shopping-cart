import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopping_cart/common/route/route.dart';
import 'package:shopping_cart/common/route/route_name.dart';
import 'package:shopping_cart/generated/assets.gen.dart';
import 'package:shopping_cart/generated/l10n.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //Check login here
      Future.delayed(const Duration(seconds: 3), () {
        navigatorState.pushReplacementNamed(RouteName.homeScreen);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Center(
              child: Image(
                  width: 120,
                  height: 120,
                  image: AssetImage(
                    Assets.images.cart.keyName,
                  )),
            ),
            Positioned(
                bottom: 80,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    S.current.splash_screen_text,
                    style: const TextStyle(color: Colors.black),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
