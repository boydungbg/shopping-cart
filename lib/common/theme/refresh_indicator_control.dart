import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DSRefreshIndicatorControl extends StatelessWidget {
  const DSRefreshIndicatorControl({
    super.key,
    required this.onRefresh,
  });

  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverRefreshControl(
        refreshTriggerPullDistance: 150,
        onRefresh: onRefresh,
        builder: (context, refreshState, pulledExtent,
            refreshTriggerPullDistance, refreshIndicatorExtent) {
          // Calculate the progress (0.0 to 1.0)
          final double progress =
              (pulledExtent / refreshTriggerPullDistance).clamp(0.0, 1.0);

          // Adjust appearance based on refresh state
          if (refreshState == RefreshIndicatorMode.refresh) {
            return const Center(
              child: SizedBox(
                height: 30.0,
                width: 30.0,
                child: CircularProgressIndicator(
                  color: Colors.amber,
                ),
              ),
            );
          }

          return Center(
            child: Opacity(
              opacity: progress,
              child: SizedBox(
                height: 30.0,
                width: 30.0,
                child: CircularProgressIndicator(
                  color: Colors.amber,
                  value: progress < 1.0
                      ? progress
                      : null, // Progress or indeterminate
                ),
              ),
            ),
          );
        });
  }
}
