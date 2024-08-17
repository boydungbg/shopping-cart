import 'package:flutter/material.dart';
import 'package:shopping_cart/extensions/double_extension.dart';

class TextPriceWidget extends StatelessWidget {
  const TextPriceWidget(
      {super.key,
      required this.price,
      this.textStyle = const TextStyle(color: Colors.deepOrangeAccent),
      this.textAlign = TextAlign.start});

  final double price;
  final TextStyle textStyle;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: textAlign,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
            text: '${price.formatPrice()} ',
            style: textStyle,
            children: const [
              TextSpan(
                  text: 'đ',
                  style: TextStyle(decoration: TextDecoration.underline))
            ]));
  }
}
