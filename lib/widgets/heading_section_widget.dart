import 'package:flutter/material.dart';

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
        Text(
          title,
          style: const TextStyle(
              color: Colors.orange, fontSize: 20, fontWeight: FontWeight.w700),
        ),
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
