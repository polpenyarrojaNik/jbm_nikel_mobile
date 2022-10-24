import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/presentation/common_widgets/app_decoration.dart';

class PedidoVentaShimmer extends StatelessWidget {
  const PedidoVentaShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade300,
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4), // if you need this
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: SizedBox(
          height: 90,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 8,
                color: Colors.grey,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(2.0),
                          height: 14,
                          width: double.infinity,
                          decoration: AppDecoration.loadingTile,
                        ),
                        Container(
                          margin: const EdgeInsets.all(2.0),
                          height: 12,
                          width: 100,
                          decoration: AppDecoration.loadingTile,
                        ),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.all(2.0),
                          height: 12,
                          width: double.infinity,
                          decoration: AppDecoration.loadingTile,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(2.0),
                        height: 14,
                        width: double.infinity,
                        decoration: AppDecoration.loadingTile,
                      ),
                      Container(
                        margin: const EdgeInsets.all(2.0),
                        height: 12,
                        width: double.infinity,
                        decoration: AppDecoration.loadingTile,
                      ),
                      const Spacer(),
                      Container(
                        margin: const EdgeInsets.all(2.0),
                        height: 12,
                        width: double.infinity,
                        decoration: AppDecoration.loadingTile,
                      ),
                      Container(
                        margin: const EdgeInsets.all(2.0),
                        height: 12,
                        width: double.infinity,
                        decoration: AppDecoration.loadingTile,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(2.0),
                        height: 14,
                        width: double.infinity,
                        decoration: AppDecoration.loadingTile,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
