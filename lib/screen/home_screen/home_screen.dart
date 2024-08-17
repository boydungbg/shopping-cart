import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/common/di/di.dart';
import 'package:shopping_cart/common/route/route.dart';
import 'package:shopping_cart/common/route/route_name.dart';
import 'package:shopping_cart/cubit/home/home_screen_cubit.dart';
import 'package:shopping_cart/cubit/home/home_screen_state.dart';
import 'package:shopping_cart/entities/product/product.dart';
import 'package:shopping_cart/generated/assets.gen.dart';
import 'package:shopping_cart/generated/l10n.dart';
import 'package:shopping_cart/screen/cart_screen/cart_screen.dart';
import 'package:shopping_cart/screen/home_screen/widget/bottom_sheet_add_cart.dart';
import 'package:shopping_cart/screen/home_screen/widget/home_screen_loading_skeleton.dart';
import 'package:shopping_cart/widgets/heading_section_widget.dart';
import 'package:shopping_cart/widgets/loading_section_widget.dart';
import 'package:shopping_cart/widgets/product_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeScreenCubit _cubit;
  late HomeScreenState _state;
  final ScrollController _scrollController = ScrollController();
  late BottomSheetAddCart _bottomSheetAddCart;

  @override
  void initState() {
    super.initState();
    _cubit = di.get<HomeScreenCubit>();
    _state = _cubit.state;
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
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          centerTitle: true,
          title: Text(S.current.home_screen_title_appbar),
          actions: [
            IconButton(
                onPressed: () async {
                  await navigatorState.pushNamed(RouteName.cartScreen,
                      arguments: CartScreenParams(
                          countItemInCart:
                              _state.homeScreenViewModel.countCartItem));
                  _cubit.getCountItemCart();
                },
                icon: BlocBuilder<HomeScreenCubit, HomeScreenState>(
                    bloc: _cubit,
                    builder: (context, state) {
                      return Badge(
                        backgroundColor: Colors.redAccent,
                        label: Text(
                            state.homeScreenViewModel.countCartItem.toString()),
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.all(1),
                        offset: const Offset(-5, 10),
                        child: Image(
                          color: Colors.white,
                          image: AssetImage(Assets.icons.shoppingCart.keyName),
                          width: 25,
                          height: 25,
                        ),
                      );
                    }))
          ],
        ),
        body: BlocConsumer<HomeScreenCubit, HomeScreenState>(
            bloc: _cubit,
            listener: (context, state) {},
            builder: (context, state) {
              _state = state;
              return RefreshIndicator(
                triggerMode: RefreshIndicatorTriggerMode.anywhere,
                color: Colors.orangeAccent,
                backgroundColor: Colors.white,
                displacement: 50,
                onRefresh: () async {
                  _cubit.page = 1;
                  _cubit.initHomeScreen();
                },
                child: LoadingSectionWidget(
                  isLoading: _state is HomeScreenLoadingState,
                  child: CustomScrollView(
                    physics: state is HomeScreenLoadingSkeletonState
                        ? const NeverScrollableScrollPhysics()
                        : null,
                    controller: _scrollController,
                    slivers: [
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
                              width: 22,
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
                          height: 220,
                          child: state is HomeScreenLoadingSkeletonState
                              ? const LoadingHotListProduct()
                              : ListView.separated(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _state.homeScreenViewModel
                                      .hotProductList.length,
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(width: 15);
                                  },
                                  itemBuilder: (_, index) {
                                    final Product product = _state
                                        .homeScreenViewModel
                                        .hotProductList[index];
                                    return ProductCardWidget(
                                      onAddCart: (productId) {
                                        //Show bottom sheet add cart
                                        _bottomSheetAddCart
                                            .showBottomSheet(context, product,
                                                //Callback add to cart
                                                (qty) {
                                          _cubit.onAddProductToCart(
                                              product, qty);
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
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 30),
                        sliver: state is HomeScreenLoadingSkeletonState
                            ? const LoadingAllProduct()
                            : SliverGrid.builder(
                                itemCount: _state
                                    .homeScreenViewModel.productList.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 15,
                                  crossAxisSpacing: 15,
                                  childAspectRatio: 0.7,
                                ),
                                itemBuilder: (_, index) {
                                  final Product product = _state
                                      .homeScreenViewModel.productList[index];
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
                      if (_state is HomeScreenPullingNextPageState)
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
                ),
              );
            }));
  }
}
