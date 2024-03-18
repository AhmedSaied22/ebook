import 'package:e_book/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 0.65,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image:
                    const DecorationImage(image: AssetImage(AssetsData.test)),
              ),
            ),
          ),
          Column(
            children: [
              
            ],
          )
        ],
      ),
    );
  }
}
