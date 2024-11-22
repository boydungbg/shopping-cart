import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/common/di/di.dart';
import 'package:shopping_cart/common/route/route.dart';
import 'package:shopping_cart/common/route/route_name.dart';
import 'package:shopping_cart/common/stream/index_bottom_navigation_bar_stream.dart';
import 'package:shopping_cart/common/theme/system_design_theme.dart';
import 'package:shopping_cart/cubit/home/home_screen_cubit.dart';
import 'package:shopping_cart/cubit/home/home_screen_state.dart';
import 'package:shopping_cart/extensions/responsive_extension.dart';
import 'package:shopping_cart/generated/assets.gen.dart';
import 'package:shopping_cart/generated/l10n.dart';
import 'package:shopping_cart/screen/cart_screen/cart_screen.dart';
import 'package:shopping_cart/screen/main/home_screen.dart';
import 'package:shopping_cart/screen/order_screen/order_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late HomeScreenCubit _cubit;
  late IndexBottomNavigationBarStream _indexBottomNavigationBarStream;

  static const List<Widget> screens = [HomeScreen(), OrderScreen()];

  @override
  void initState() {
    super.initState();
    _cubit = di.get<HomeScreenCubit>();
    _indexBottomNavigationBarStream = di.get<IndexBottomNavigationBarStream>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _cubit.getCountItemCart();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomNavigationBarSystem(),
        body: StreamBuilder(
          stream: _indexBottomNavigationBarStream.stream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return screens
                  .elementAt(_indexBottomNavigationBarStream.currentPage);
            }
            return screens.elementAt(0);
          },
        ));
  }
}

class BottomNavigationBarSystem extends StatefulWidget {
  const BottomNavigationBarSystem({super.key});

  @override
  State<BottomNavigationBarSystem> createState() =>
      _BottomNavigationBarSystemState();
}

class _BottomNavigationBarSystemState extends State<BottomNavigationBarSystem> {
  late IndexBottomNavigationBarStream _indexBottomNavigationBarStream;
  late StreamSubscription<int> _streamSubscription;
  int indexSelected = 0;
  void _onItemTapped(int index) {
    _indexBottomNavigationBarStream.jumbToPage(index);
  }

  @override
  void initState() {
    _indexBottomNavigationBarStream = di.get<IndexBottomNavigationBarStream>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _streamSubscription =
          _indexBottomNavigationBarStream.stream.listen((index) {
        setState(() {
          indexSelected = index;
        });
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Products',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.now_widgets),
          label: 'My orders',
        ),
      ],
      currentIndex: _indexBottomNavigationBarStream.currentPage,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
