import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/common/di/di.dart';
import 'package:shopping_cart/common/theme/system_design_theme.dart';
import 'package:shopping_cart/cubit/order/order_screen_cubit.dart';
import 'package:shopping_cart/cubit/order/order_screen_state.dart';
import 'package:shopping_cart/entities/order/order.dart';
import 'package:shopping_cart/entities/order/order_item.dart';
import 'package:shopping_cart/extensions/double_extension.dart';
import 'package:shopping_cart/extensions/responsive_extension.dart';
import 'package:shopping_cart/generated/l10n.dart';
import 'package:shopping_cart/screen/order_screen/widget/order_screen_loading_skeleton.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with AutomaticKeepAliveClientMixin {
  late OrderScreenCubit _cubit;

  @override
  void initState() {
    _cubit = di.get<OrderScreenCubit>();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _cubit.init();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<OrderScreenCubit, OrderScreenState>(
        bloc: _cubit,
        listener: (context, state) {},
        builder: (context, state) {
          return CustomScrollView(
            physics: state is OrderScreenLoadingSkeletonState
                ? const NeverScrollableScrollPhysics()
                : const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverAppBar(
                pinned: true,
                snap: false,
                floating: false,
                title: Text(
                  S.current.order_screen_title_appbar,
                  style: context.responsive(
                      SD.of(context).textStyle.textHeading4Bold,
                      md: SD.of(context).textStyle.textHeading2Bold),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 15,
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(15),
                sliver: state is OrderScreenLoadingSkeletonState
                    ? const ListOrderItemLoadingSkeleton()
                    : SliverList.separated(
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 15,
                          );
                        },
                        itemCount: state.orderScreenViewModel.orders.length,
                        itemBuilder: (_, index) {
                          final order =
                              state.orderScreenViewModel.orders[index];
                          return Container(
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 251, 251, 251),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 1,
                                    offset: Offset(0, 1), // Shadow position
                                  ),
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 1,
                                    offset: Offset(1, 0), // Shadow position
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                '${S.current.order_screen_order_item_order_no}: ',
                                            style: SD
                                                .of(context)
                                                .textStyle
                                                .textBodyBold
                                                .copyWith(color: Colors.black)),
                                        TextSpan(
                                            text: '#${order.orderNo}',
                                            style: SD
                                                .of(context)
                                                .textStyle
                                                .textBodyRegular
                                                .copyWith(color: Colors.black))
                                      ])),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 2, horizontal: 12),
                                      decoration: BoxDecoration(
                                          color: Colors.amber.shade100,
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: Text(
                                        'Complete',
                                        style: SD
                                            .of(context)
                                            .textStyle
                                            .textBody2Medium
                                            .copyWith(color: Colors.orange),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                if (state
                                    .orderScreenViewModel.selectedOrdersViewMore
                                    .contains(order.id))
                                  ...List.generate(
                                    order.items.length,
                                    (index) => Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child:
                                          ItemOrder(items: order.items[index]),
                                    ),
                                  )
                                else
                                  ItemOrder(items: order.items.first),
                                if (order.items.length > 1 &&
                                    !state.orderScreenViewModel
                                        .selectedOrdersViewMore
                                        .contains(order.id))
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        style: TextButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 2, horizontal: 2),
                                            minimumSize: Size.zero),
                                        onPressed: () {
                                          _cubit.viewMoreItemOrder(order.id);
                                        },
                                        child: Text(
                                          S.current
                                              .order_screen_order_item_view_more,
                                          style: SD
                                              .of(context)
                                              .textStyle
                                              .textBody2Regular
                                              .copyWith(color: Colors.black54),
                                        ),
                                      )
                                    ],
                                  ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              '${S.current.order_screen_order_item_total_items} ',
                                          style: SD
                                              .of(context)
                                              .textStyle
                                              .textBodyRegular
                                              .copyWith(color: Colors.black)),
                                      TextSpan(
                                          text:
                                              '${S.current.order_screen_order_item_total_items_value(order.items.length)} ',
                                          style: SD
                                              .of(context)
                                              .textStyle
                                              .textBodyRegular
                                              .copyWith(color: Colors.black)),
                                      TextSpan(
                                          text:
                                              'đ${order.totalPrice.formatPrice()}',
                                          style: SD
                                              .of(context)
                                              .textStyle
                                              .textLargeBold
                                              .copyWith(color: Colors.black))
                                    ]))
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
              )
            ],
          );
        });
  }

  @override
  bool get wantKeepAlive => true;
}

class ItemOrder extends StatelessWidget {
  const ItemOrder({
    super.key,
    required this.items,
  });

  final OrderItem items;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 75,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(items.image),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              items.title,
              style: SD
                  .of(context)
                  .textStyle
                  .textBodyRegular
                  .copyWith(color: Colors.black87),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Text(
                  'x${items.quantity}',
                  style: SD
                      .of(context)
                      .textStyle
                      .textBody2Regular
                      .copyWith(color: Colors.black87),
                )),
                Expanded(
                    child: Text(
                  'đ${items.price.formatPrice()}',
                  textAlign: TextAlign.right,
                  style: SD
                      .of(context)
                      .textStyle
                      .textBody2Bold
                      .copyWith(color: Colors.black87),
                )),
              ],
            )
          ],
        )),
      ],
    );
  }
}
