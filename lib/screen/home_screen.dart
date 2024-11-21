import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/common/di/di.dart';
import 'package:shopping_cart/common/route/route.dart';
import 'package:shopping_cart/common/route/route_name.dart';
import 'package:shopping_cart/common/theme/refresh_indicator_control.dart';
import 'package:shopping_cart/common/theme/system_design_theme.dart';
import 'package:shopping_cart/cubit/home/home_screen_cubit.dart';
import 'package:shopping_cart/cubit/home/home_screen_state.dart';
import 'package:shopping_cart/entities/product/product.dart';
import 'package:shopping_cart/extensions/responsive_extension.dart';
import 'package:shopping_cart/generated/assets.gen.dart';
import 'package:shopping_cart/generated/l10n.dart';
import 'package:shopping_cart/screen/cart_screen/cart_screen.dart';
import 'package:shopping_cart/screen/main/widget/bottom_sheet_add_cart.dart';
import 'package:shopping_cart/screen/main/widget/home_screen_loading_skeleton.dart';
import 'package:shopping_cart/widgets/heading_section_widget.dart';
import 'package:shopping_cart/widgets/loading_section_widget.dart';
import 'package:shopping_cart/widgets/product_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  late HomeScreenCubit _cubit;
  final ScrollController _scrollController = ScrollController();
  late BottomSheetAddCart _bottomSheetAddCart;

  @override
  void initState() {
    super.initState();
    _cubit = di.get<HomeScreenCubit>();
    _bottomSheetAddCart = BottomSheetAddCart();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _cubit.initHomeScreen();
    });
    _scrollController.addListener(_loadMore);
  }

  void _loadMore() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent + 30 &&
        _cubit.state is! HomeScreenPullingNextPageState) {
      _cubit.nextPage();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<HomeScreenCubit, HomeScreenState>(
        bloc: _cubit,
        listener: (context, state) {
          //todo: Handle show error
        },
        builder: (context, state) {
          return LoadingSectionWidget(
            isLoading: state is HomeScreenLoadingState,
            child: CustomScrollView(
              physics: state is HomeScreenLoadingSkeletonState
                  ? const NeverScrollableScrollPhysics()
                  : null,
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  pinned: true,
                  snap: false,
                  floating: false,
                  title: Text(
                    S.current.home_screen_title_appbar,
                    style: context.responsive(
                        SD.of(context).textStyle.textHeading4Bold,
                        md: SD.of(context).textStyle.textHeading2Bold),
                  ),
                  actions: [
                    IconButton(
                        onPressed: () async {
                          await navigatorState.pushNamed(RouteName.cartScreen,
                              arguments: CartScreenParams(
                                  countItemInCart: _cubit.state
                                      .homeScreenViewModel.countCartItem));
                          _cubit.getCountItemCart();
                        },
                        icon: Badge(
                          backgroundColor: Colors.redAccent,
                          label: Text(
                              state.homeScreenViewModel.countCartItem
                                  .toString(),
                              style: context.responsive(
                                  SD.of(context).textStyle.textSmallRegular,
                                  md: SD
                                      .of(context)
                                      .textStyle
                                      .textBodyRegular)),
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.all(1),
                          offset: context.responsive(const Offset(-5, 10),
                              md: const Offset(-10, 20)),
                          child: Image(
                            color: Colors.white,
                            image:
                                AssetImage(Assets.icons.shoppingCart.keyName),
                            width: context.responsive(25, md: 35),
                            height: context.responsive(25, md: 35),
                          ),
                        ))
                  ],
                ),
                DSRefreshIndicatorControl(onRefresh: () async {
                  _cubit.page = 1;
                  _cubit.initHomeScreen();
                }),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 15,
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  sliver: SliverToBoxAdapter(
                    child: HeadingSectionWidget(
                      title: S.current.home_screen_title_hot_product,
                      icon: Image(
                        image: AssetImage(
                          Assets.icons.flame.keyName,
                        ),
                        width: context.responsive(20, md: 35),
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: context.responsive<double>(220, sm: 220, md: 380),
                    child: state is HomeScreenLoadingSkeletonState
                        ? const LoadingHotListProduct()
                        : ListView.separated(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                state.homeScreenViewModel.hotProductList.length,
                            separatorBuilder: (context, index) {
                              return const SizedBox(width: 15);
                            },
                            itemBuilder: (_, index) {
                              final Product product = state
                                  .homeScreenViewModel.hotProductList[index];
                              return ProductCardWidget(
                                onAddCart: (productId) {
                                  //Show bottom sheet add cart
                                  _bottomSheetAddCart
                                      .showBottomSheet(context, product,
                                          //Callback add to cart
                                          (qty) {
                                    _cubit.onAddProductToCart(product, qty);
                                    navigatorState.pop();
                                  });
                                },
                                data: product,
                              );
                            },
                          ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 15,
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  sliver: SliverToBoxAdapter(
                    child: HeadingSectionWidget(
                      title: S.current.home_screen_title_all_product,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 15,
                  ),
                ),
                SliverPadding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 30),
                  sliver: state is HomeScreenLoadingSkeletonState
                      ? const LoadingAllProduct()
                      : SliverGrid.builder(
                          itemCount:
                              state.homeScreenViewModel.productList.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                context.responsive<int>(2, sm: 2, md: 3),
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                            childAspectRatio: context.responsive<double>(0.7,
                                sm: 0.7, md: 0.75),
                          ),
                          itemBuilder: (_, index) {
                            final Product product =
                                state.homeScreenViewModel.productList[index];
                            return ProductCardWidget(
                              onAddCart: (productId) {
                                //Show bottom sheet add cart
                                _bottomSheetAddCart
                                    .showBottomSheet(context, product,
                                        //Callback add to cart
                                        (qty) {
                                  _cubit.onAddProductToCart(product, qty);
                                  navigatorState.pop();
                                });
                              },
                              data: product,
                            );
                          },
                        ),
                ),
                if (state is HomeScreenPullingNextPageState)
                  const SliverToBoxAdapter(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 35),
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.white,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  )
              ],
            ),
          );
        });
  }

  @override
  bool get wantKeepAlive => true;
}
