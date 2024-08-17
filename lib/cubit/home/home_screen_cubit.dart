import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_cart/common/exception/exception.dart';
import 'package:shopping_cart/entities/cart/add_cart_item_request.dart';
import 'package:shopping_cart/entities/product/hot_product_list_request.dart';
import 'package:shopping_cart/entities/product/hot_product_list_response.dart';
import 'package:shopping_cart/entities/product/product.dart';
import 'package:shopping_cart/entities/product/product_list_request.dart';
import 'package:shopping_cart/entities/product/product_list_response.dart';
import 'package:shopping_cart/services/cart_service.dart';
import 'package:shopping_cart/services/product_service.dart';

import 'home_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@injectable
class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit(this._service, this._cartService)
      : super(const HomeScreenInitState());

  final ProductService _service;
  final CartService _cartService;

  int page = 1;
  int limit = 10;

  Future<void> initHomeScreen() async {
    emit(HomeScreenLoadingSkeletonState(
        homeScreenViewModel: state.homeScreenViewModel.copyWith()));
    await Future.delayed(const Duration(seconds: 3));
    final Either<BaseException, HotProductListResponse> hotProductListRes =
        await _service
            .getHotProductList(const HotProductListRequest(limit: 10));
    final Either<BaseException, ProductListResponse> productListRes =
        await _service
            .getListProduct(ProductListRequest(page: page, limit: limit));
    HomeScreenViewModel viewModel = const HomeScreenViewModel();

    final Either<BaseException, int> countItemCart =
        await _cartService.getCountItemInCart();

    if (hotProductListRes.isLeft ||
        productListRes.isLeft ||
        countItemCart.isLeft) {
      emit(HomeScreenErrorState(
          homeScreenViewModel: state.homeScreenViewModel.copyWith()));
    }
    if (hotProductListRes.isRight) {
      viewModel =
          viewModel.copyWith(hotProductList: hotProductListRes.right.products);
    }
    if (productListRes.isRight) {
      viewModel = viewModel.copyWith(
        productList: productListRes.right.products,
        count: productListRes.right.count,
        page: productListRes.right.page,
        maxPage: productListRes.right.maxPage,
        perPage: productListRes.right.perPage,
      );
    }
    if (countItemCart.isRight) {
      viewModel = viewModel.copyWith(countCartItem: countItemCart.right);
    }
    emit(HomeScreenPrimaryState(homeScreenViewModel: viewModel));
  }

  Future<void> getCountItemCart() async {
    final Either<BaseException, int> countItemCart =
        await _cartService.getCountItemInCart();

    if (countItemCart.isLeft) {
      return emit(HomeScreenErrorState(
          homeScreenViewModel: state.homeScreenViewModel.copyWith()));
    }
    emit(HomeScreenPrimaryState(
        homeScreenViewModel: state.homeScreenViewModel
            .copyWith(countCartItem: countItemCart.right)));
  }

  Future<void> nextPage() async {
    if (state.homeScreenViewModel.maxPage < page + 1) {
      return;
    }
    emit(HomeScreenPullingNextPageState(
        homeScreenViewModel: state.homeScreenViewModel.copyWith()));
    await Future.delayed(const Duration(seconds: 3));
    page += 1;
    final Either<BaseException, ProductListResponse> productListRes =
        await _service
            .getListProduct(ProductListRequest(page: page, limit: limit));

    if (productListRes.isLeft) {
      return emit(HomeScreenErrorState(
          homeScreenViewModel: state.homeScreenViewModel.copyWith()));
    }
    if (productListRes.isRight) {
      List<Product> listProducts =
          List.from(state.homeScreenViewModel.productList);
      listProducts.addAll(productListRes.right.products);
      emit(HomeScreenPrimaryState(
          homeScreenViewModel:
              state.homeScreenViewModel.copyWith(productList: listProducts)));
    }
  }

  Future<void> onAddProductToCart(Product product, int qty) async {
    emit(HomeScreenLoadingState(
        homeScreenViewModel: state.homeScreenViewModel.copyWith()));
    await Future.delayed(const Duration(seconds: 1));
    Either<BaseException, bool> data = await _cartService.addCartItem(
        AddCartItemRequest(
            image: product.image,
            price: product.price,
            productId: product.id,
            quantity: qty,
            title: product.title));
    if (data.isLeft) {
      return emit(HomeScreenErrorState(
          homeScreenViewModel: state.homeScreenViewModel.copyWith()));
    }
    if (data.isRight) {
      final Either<BaseException, int> countItemCart =
          await _cartService.getCountItemInCart();
      if (countItemCart.isLeft) {
        return emit(HomeScreenErrorState(
            homeScreenViewModel: state.homeScreenViewModel.copyWith()));
      }
      return emit(HomeScreenPrimaryState(
          homeScreenViewModel: state.homeScreenViewModel
              .copyWith(countCartItem: countItemCart.right)));
    }
  }
}
