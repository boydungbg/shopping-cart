import 'package:flutter/material.dart';
import 'package:shopping_cart/entities/product/product.dart';
import 'package:shopping_cart/generated/assets.gen.dart';
import 'package:shopping_cart/widgets/text_price_widget.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget(
      {super.key, required this.data, required this.onAddCart});

  final Product data;

  final Function(int productId) onAddCart;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 1,
            offset: Offset(0, 2), // Shadow position
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image(
                fit: BoxFit.cover,
                image: AssetImage(data.image),
                width: double.infinity,
              ),
              if (data.isHot == Product.isHotProduct)
                Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(1, 2), // Shadow position
                          ),
                        ],
                      ),
                      child: Image(
                        image: AssetImage(Assets.icons.flame.keyName),
                        width: 20,
                        height: 20,
                      ),
                    ))
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          data.title,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextPriceWidget(price: data.price)
                      ],
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        onAddCart(data.id);
                      },
                      child: const Icon(
                        Icons.add_shopping_cart,
                        color: Colors.orange,
                        size: 20,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
