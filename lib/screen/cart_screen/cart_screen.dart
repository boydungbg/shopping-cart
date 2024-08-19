import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/common/di/di.dart';
import 'package:shopping_cart/common/route/route.dart';
import 'package:shopping_cart/common/route/route_name.dart';
import 'package:shopping_cart/common/theme/system_design_theme.dart';
import 'package:shopping_cart/cubit/cart/cart_screen_cubit.dart';
import 'package:shopping_cart/cubit/cart/cart_screen_state.dart';
import 'package:shopping_cart/entities/cart/cart_item.dart';
import 'package:shopping_cart/extensions/responsive_extension.dart';
import 'package:shopping_cart/generated/l10n.dart';
import 'package:shopping_cart/screen/cart_screen/widget/cart_screen_loading_skeleton.dart';
import 'package:shopping_cart/widgets/loading_section_widget.dart';
import 'package:shopping_cart/widgets/overview_product_widget.dart';
import 'package:shopping_cart/widgets/text_price_widget.dart';

class CartScreenParams {
  CartScreenParams({required this.countItemInCart});

  final int countItemInCart;
}

class CartScreen extends StatefulWidget {
  const CartScreen({required this.params, super.key});

  final CartScreenParams params;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late CartScreenCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = di.get<CartScreenCubit>();
    _cubit.totalCartItemInScreen = widget.params.countItemInCart;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _cubit.getListCart();
    });
  }

  void showOrderSucess() {
    showDialog(
        context: context,
        builder: (_) => Dialog(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: context.responsive(300, md: 350),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Text(
                          S.current.cart_screen_order_successfully,
                          style: context.responsive(
                            SD.of(context).textStyle.textHeading4Bold,
                            md: SD.of(context).textStyle.textHeading3Bold,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.orange,
                                      padding: context.responsive(
                                          const EdgeInsets.all(10),
                                          md: const EdgeInsets.all(15)),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12))),
                                  onPressed: () {
                                    navigatorState.popUntil((route) =>
                                        route.settings.name ==
                                        RouteName.homeScreen);
                                  },
                                  child: Text(
                                    S.current.cart_screen_button_back_to_home,
                                    style: context.responsive(
                                        SD
                                            .of(context)
                                            .textStyle
                                            .textBodyMedium
                                            .copyWith(color: Colors.white),
                                        md: SD
                                            .of(context)
                                            .textStyle
                                            .textHeading4Medium
                                            .copyWith(color: Colors.white)),
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: true,
        title: BlocBuilder<CartScreenCubit, CartScreenState>(
            bloc: _cubit,
            builder: (_, state) {
              return Text(
                S.current
                    .cart_screen_title_appbar(_cubit.totalCartItemInScreen),
                style: context.responsive(
                    SD.of(context).textStyle.textHeading4Bold,
                    md: SD.of(context).textStyle.textHeading2Bold),
              );
            }),
      ),
      body: BlocConsumer<CartScreenCubit, CartScreenState>(
          bloc: _cubit,
          listener: (context, state) {
            if (state is CartScreenOrderSuccessState) {
              showOrderSucess();
            }
          },
          builder: (context, state) {
            return LoadingSectionWidget(
              isLoading: state is CartScreenLoadingState,
              child: Column(
                children: [
                  Expanded(
                    flex: context.responsive(5, md: 6),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: state is CartScreenLoadingSkeletonState
                          ? const ListCartItemLoadingSkeleton()
                          : ListView.separated(
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  height: 15,
                                );
                              },
                              itemCount:
                                  state.cartScreenViewModel.cartItems.length,
                              itemBuilder: (_, index) {
                                final CartItem cartItem =
                                    state.cartScreenViewModel.cartItems[index];
                                return Container(
                                  padding: const EdgeInsets.all(10),
                                  height: context.responsive(100, md: 170),
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 251, 251, 251),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 1,
                                          offset:
                                              Offset(1, 1), // Shadow position
                                        ),
                                      ],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  child: OverviewProduct(
                                    params: OverViewProductPraramsWidget(
                                        id: cartItem.id,
                                        qty: cartItem.quantity,
                                        image: cartItem.image,
                                        onUpdateQty: (qty) {
                                          _cubit.updateCartScreen(cartItem.id,
                                              cartItem.copyWith(quantity: qty));
                                        },
                                        onCloseButton: () {
                                          _cubit.deleteItem(cartItem.id);
                                        },
                                        price: cartItem.price,
                                        title: cartItem.title),
                                  ),
                                );
                              }),
                    ),
                  ),
                  Container(
                    height: context.responsive(125, md: 170),
                    padding: const EdgeInsets.all(15),
                    decoration:
                        const BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1,
                        offset: Offset(1, -2), // Shadow position
                      ),
                    ]),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              S.current.cart_screen_total_price,
                              style: context.responsive(
                                  SD.of(context).textStyle.textHeading5Medium,
                                  md: SD
                                      .of(context)
                                      .textStyle
                                      .textHeading3Medium),
                            ),
                            Expanded(
                              child: TextPriceWidget(
                                  textStyle: context.responsive(
                                    SD
                                        .of(context)
                                        .textStyle
                                        .textHeading5Medium
                                        .copyWith(color: Colors.black),
                                    md: SD
                                        .of(context)
                                        .textStyle
                                        .textHeading3Medium
                                        .copyWith(color: Colors.black),
                                  ),
                                  textAlign: TextAlign.end,
                                  price: state.cartScreenViewModel.totalPrice),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: TextButton(
                              style: TextButton.styleFrom(
                                  disabledBackgroundColor: Colors.grey,
                                  padding: context.responsive(
                                      const EdgeInsets.all(10),
                                      md: const EdgeInsets.all(15)),
                                  backgroundColor: Colors.orange,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                              onPressed:
                                  state.cartScreenViewModel.cartItems.isNotEmpty
                                      ? () {
                                          _cubit.order();
                                        }
                                      : null,
                              child: Text(S.current.cart_screen_order,
                                  style: context.responsive(
                                    SD
                                        .of(context)
                                        .textStyle
                                        .textBodyMedium
                                        .copyWith(color: Colors.white),
                                    md: SD
                                        .of(context)
                                        .textStyle
                                        .textHeading4Medium
                                        .copyWith(color: Colors.white),
                                  )),
                            )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
