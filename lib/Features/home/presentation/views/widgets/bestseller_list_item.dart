import 'package:e_book/core/utils/assets.dart';
import 'package:e_book/core/utils/constants.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 0.64,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image:
                    const DecorationImage(image: AssetImage(AssetsData.test)),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 6),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                ),
              ),
              const SizedBox(height: 3),
              Text(
                'J.K. Rowling',
                style: Styles.textStyle14.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 3),
              Row(
                children: [
                  Text('19.99 €',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
