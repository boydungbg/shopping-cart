import 'package:flutter/material.dart';
import 'package:shopping_cart/extensions/responsive_extension.dart';
import 'package:shopping_cart/widgets/skeleton_loading_widget.dart';

class ListOrderItemLoadingSkeleton extends StatelessWidget {
  const ListOrderItemLoadingSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
        itemCount: 4,
        // physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 15,
          );
        },
        itemBuilder: (_, index) {
          return Container(
            height: context.responsive(100, md: 170),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 251, 251, 251),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 1,
                    offset: Offset(1, 1), // Shadow position
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Row(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: SkeletonLoading(
                    child: Container(
                      color: Colors.white,
                      width: context.responsive<double>(90, sm: 140, md: 290),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: SkeletonLoading(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  height: context.responsive<double>(20,
                                      sm: 20, md: 35),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SkeletonLoading(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                width: context.responsive<double>(100, md: 200),
                                height: context.responsive<double>(20,
                                    sm: 20, md: 35),
                              ),
                            ),
                            SkeletonLoading(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                width: context.responsive<double>(80, md: 120),
                                height: context.responsive<double>(20,
                                    sm: 20, md: 35),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
