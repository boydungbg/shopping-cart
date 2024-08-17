import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_cart/entities/product/product.dart';

part 'home_screen_state.freezed.dart';

@freezed
abstract class HomeScreenState with _$HomeScreenState {
  const HomeScreenState._();

  const factory HomeScreenState.homeScreenInitState({
    @Default(HomeScreenViewModel()) HomeScreenViewModel homeScreenViewModel,
  }) = HomeScreenInitState;

  const factory HomeScreenState.homeScreenLoadingState({
    @Default(HomeScreenViewModel()) HomeScreenViewModel homeScreenViewModel,
  }) = HomeScreenLoadingState;

  const factory HomeScreenState.homeScreenLoadingSkeletonState({
    @Default(HomeScreenViewModel()) HomeScreenViewModel homeScreenViewModel,
  }) = HomeScreenLoadingSkeletonState;

  const factory HomeScreenState.homeScreenPrimaryState({
    @Default(HomeScreenViewModel()) HomeScreenViewModel homeScreenViewModel,
  }) = HomeScreenPrimaryState;

  const factory HomeScreenState.homeScreenPullToRefreshingState({
    @Default(HomeScreenViewModel()) HomeScreenViewModel homeScreenViewModel,
  }) = HomeScreenPullToRefreshingState;

  const factory HomeScreenState.homeScreenPullToRefreshDoneState({
    @Default(HomeScreenViewModel()) HomeScreenViewModel homeScreenViewModel,
  }) = HomeScreenPullToRefreshDoneState;

  const factory HomeScreenState.homeScreenPullingNextPageState({
    @Default(HomeScreenViewModel()) HomeScreenViewModel homeScreenViewModel,
  }) = HomeScreenPullingNextPageState;

  const factory HomeScreenState.homeScreenPullNextPageDoneState({
    @Default(HomeScreenViewModel()) HomeScreenViewModel homeScreenViewModel,
  }) = HomeScreenPullNextPageDoneState;

  const factory HomeScreenState.homeScreenErrorState({
    @Default(HomeScreenViewModel()) HomeScreenViewModel homeScreenViewModel,
  }) = HomeScreenErrorState;
}

@freezed
class HomeScreenViewModel with _$HomeScreenViewModel {
  const HomeScreenViewModel._();

  const factory HomeScreenViewModel({
    @Default(0) int countCartItem,
    @Default([]) List<Product> hotProductList,
    @Default([]) List<Product> productList,
    @Default(0) int perPage,
    @Default(0) int maxPage,
    @Default(0) int count,
    @Default(0) int page,
  }) = _HomeScreenViewModel;
}
