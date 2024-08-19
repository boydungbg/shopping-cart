import 'package:flutter/material.dart';
import 'package:shopping_cart/extensions/responsive_extension.dart';

class LoadingSectionWidget extends StatelessWidget {
  const LoadingSectionWidget({
    required this.child,
    required this.isLoading,
    super.key,
  });
  final Widget child;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Visibility(
                visible: isLoading,
                child: Container(
                    decoration: const BoxDecoration(color: Colors.black54),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: context.responsive(50, md: 70),
                          height: context.responsive(50, md: 70),
                          child: CircularProgressIndicator(
                            color: Colors.orange,
                            strokeWidth: context.responsive(4, md: 8),
                          ),
                        ),
                      ],
                    ))))
      ],
    );
  }
}
