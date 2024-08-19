import 'package:flutter/material.dart';
import 'package:shopping_cart/common/theme/system_design_theme.dart';
import 'package:shopping_cart/extensions/responsive_extension.dart';

class HeadingSectionWidget extends StatelessWidget {
  const HeadingSectionWidget({
    super.key,
    required this.title,
    this.icon,
  });

  final String title;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title,
            style: context.responsive(
                SD
                    .of(context)
                    .textStyle
                    .textHeading4Bold
                    .copyWith(color: Colors.orangeAccent),
                md: SD
                    .of(context)
                    .textStyle
                    .textHeading2Bold
                    .copyWith(color: Colors.orangeAccent))),
        if (icon != null) ...[
          const SizedBox(
            width: 5,
          ),
          icon!,
        ]
      ],
    );
  }
}
