import 'package:flutter/material.dart';

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
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ))))
      ],
    );
  }
}
