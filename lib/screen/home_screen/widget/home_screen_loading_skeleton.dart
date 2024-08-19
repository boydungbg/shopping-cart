import 'package:flutter/material.dart';
import 'package:shopping_cart/extensions/responsive_extension.dart';
import 'package:shopping_cart/widgets/skeleton_loading_widget.dart';

class LoadingHotListProduct extends StatelessWidget {
  const LoadingHotListProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(width: 15);
      },
      itemCount: 3,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Container(
        width: context.responsive<double>(140, sm: 140, md: 290),
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
            SkeletonLoading(
              child: Container(
                color: Colors.white,
                height: context.responsive<double>(140, sm: 140, md: 290),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkeletonLoading(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4)),
                        width: context.responsive<double>(70, sm: 70, md: 100),
                        height: context.responsive<double>(15, md: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SkeletonLoading(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4)),
                        width: context.responsive<double>(40, sm: 40, md: 70),
                        height: context.responsive<double>(15, md: 20),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoadingAllProduct extends StatelessWidget {
  const LoadingAllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: context.responsive<int>(2, md: 3),
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: context.responsive<double>(0.7, sm: 0.7, md: 0.75),
      ),
      itemBuilder: (context, index) => Container(
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
            SkeletonLoading(
              child: Container(
                color: Colors.white,
                height: context.responsive<double>(180, sm: 180, md: 280),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkeletonLoading(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4)),
                        width: context.responsive<double>(70, sm: 70, md: 100),
                        height: context.responsive<double>(15, md: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SkeletonLoading(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4)),
                        width: context.responsive<double>(40, sm: 40, md: 70),
                        height: context.responsive<double>(15, md: 20),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
