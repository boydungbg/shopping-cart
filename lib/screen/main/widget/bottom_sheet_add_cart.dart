import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:shopping_cart/common/route/route.dart';
import 'package:shopping_cart/common/theme/system_design_theme.dart';
import 'package:shopping_cart/entities/product/product.dart';
import 'package:shopping_cart/extensions/responsive_extension.dart';
import 'package:shopping_cart/generated/l10n.dart';
import 'package:shopping_cart/widgets/overview_product_widget.dart';

class BottomSheetAddCart {
  Future showBottomSheet(BuildContext context, Product product,
      Function(int qty) onAddCart) async {
    await showModalBottomSheet(
        context: context,
        builder: (_) => BottomSheetAddCartView(
              product: product,
              onAddCart: onAddCart,
            ));
  }
}

class BottomSheetAddCartView extends StatefulWidget {
  const BottomSheetAddCartView(
      {required this.product, required this.onAddCart, super.key});

  final Product product;
  final Function(int qty) onAddCart;

  @override
  State<BottomSheetAddCartView> createState() => _BottomSheetAddCartViewState();
}

class _BottomSheetAddCartViewState extends State<BottomSheetAddCartView> {
  int qtyItemAddCart = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.responsive(230, md: 300),
      padding: const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 15),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(24), topEnd: Radius.circular(24))),
      child: Column(
        children: [
          Expanded(
            child: OverviewProduct(
              params: OverViewProductPraramsWidget(
                  id: widget.product.id,
                  qty: qtyItemAddCart,
                  image: widget.product.image,
                  onUpdateQty: (qty) {
                    qtyItemAddCart = qty;
                  },
                  onCloseButton: () {
                    navigatorState.pop();
                  },
                  price: widget.product.price,
                  title: widget.product.title),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                      style: TextButton.styleFrom(
                          padding: context.responsive(const EdgeInsets.all(10),
                              md: const EdgeInsets.all(15)),
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      onPressed: () {
                        widget.onAddCart(qtyItemAddCart);
                      },
                      child: Text(
                        S.current.button_add_cart,
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
            ),
          ),
        ],
      ),
    );
  }
}
