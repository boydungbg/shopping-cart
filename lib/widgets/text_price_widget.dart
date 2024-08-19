import 'package:flutter/material.dart';
import 'package:shopping_cart/common/theme/system_design_theme.dart';
import 'package:shopping_cart/extensions/double_extension.dart';
import 'package:shopping_cart/extensions/responsive_extension.dart';

class TextPriceWidget extends StatelessWidget {
  const TextPriceWidget(
      {super.key,
      required this.price,
      this.textStyle,
      this.textAlign = TextAlign.start});

  final double price;
  final TextStyle? textStyle;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: textAlign,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
            text: '${price.formatPrice()} ',
            style: textStyle ??
                context.responsive(
                  SD
                      .of(context)
                      .textStyle
                      .textBody2Regular
                      .copyWith(color: Colors.deepOrangeAccent),
                  md: SD
                      .of(context)
                      .textStyle
                      .textLargeRegular
                      .copyWith(color: Colors.deepOrangeAccent),
                ),
            children: const [
              TextSpan(
                  text: 'đ',
                  style: TextStyle(decoration: TextDecoration.underline))
            ]));
  }
}
