// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shopping_cart/common/stream/index_bottom_navigation_bar_stream.dart'
    as _i239;
import 'package:shopping_cart/cubit/cart/cart_screen_cubit.dart' as _i207;
import 'package:shopping_cart/cubit/home/home_screen_cubit.dart' as _i403;
import 'package:shopping_cart/cubit/order/order_screen_cubit.dart' as _i656;
import 'package:shopping_cart/repository/local/cart_repository.dart' as _i884;
import 'package:shopping_cart/repository/local/order_repository.dart' as _i247;
import 'package:shopping_cart/repository/local/product_repository.dart'
    as _i363;
import 'package:shopping_cart/repository/sqflite_database.dart' as _i640;
import 'package:shopping_cart/services/cart_service.dart' as _i49;
import 'package:shopping_cart/services/exception_handle.dart' as _i195;
import 'package:shopping_cart/services/order_service.dart' as _i300;
import 'package:shopping_cart/services/product_service.dart' as _i839;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i640.SqfliteDatabase>(() => _i640.SqfliteDatabase());
    gh.lazySingleton<_i239.IndexBottomNavigationBarStream>(
        () => _i239.IndexBottomNavigationBarStream());
    gh.factory<_i884.CartRepository>(
        () => _i884.CartReposityImpl(gh<_i640.SqfliteDatabase>()));
    gh.factory<_i195.HandleException>(() => _i195.ExceptionHandleImpl());
    gh.factory<_i363.ProductRepository>(
        () => _i363.ProductRepositoryImpl(gh<_i640.SqfliteDatabase>()));
    gh.factory<_i247.OrderRepository>(
        () => _i247.OrderRepositoryImpl(gh<_i640.SqfliteDatabase>()));
    gh.factory<_i300.OrderService>(
        () => _i300.OrderServiceImpl(gh<_i247.OrderRepository>()));
    gh.factory<_i49.CartService>(
        () => _i49.CartServiceImpl(gh<_i884.CartRepository>()));
    gh.factory<_i656.OrderScreenCubit>(
        () => _i656.OrderScreenCubit(gh<_i300.OrderService>()));
    gh.factory<_i839.ProductService>(
        () => _i839.ProductServiceImpl(gh<_i363.ProductRepository>()));
    gh.factory<_i207.CartScreenCubit>(() => _i207.CartScreenCubit(
          gh<_i49.CartService>(),
          gh<_i300.OrderService>(),
        ));
    gh.factory<_i403.HomeScreenCubit>(() => _i403.HomeScreenCubit(
          gh<_i839.ProductService>(),
          gh<_i49.CartService>(),
        ));
    return this;
  }
}
