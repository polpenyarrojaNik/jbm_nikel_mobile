import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/presentation/common_widgets/app_decoration.dart';

class ArticuloListShimmer extends StatelessWidget {
  const ArticuloListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade300,
      child: SizedBox(
        height: 60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.all(2.0),
                  height: 14,
                  width: 75,
                  decoration: AppDecoration.loadingTile,
                ),
                Container(
                  margin: const EdgeInsets.all(2.0),
                  height: 14,
                  width: 100,
                  decoration: AppDecoration.loadingTile,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(2.0),
              height: 12,
              width: double.infinity,
              decoration: AppDecoration.loadingTile,
            ),
            Container(
              margin: const EdgeInsets.all(2.0),
              height: 12,
              width: 200,
              decoration: AppDecoration.loadingTile,
            ),
          ],
        ),
      ),
    );
  }
}
