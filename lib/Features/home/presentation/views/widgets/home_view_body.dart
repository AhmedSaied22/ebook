import 'package:e_book/Features/home/presentation/views/widgets/bestseller_list_item.dart';
import 'package:e_book/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:e_book/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 40),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(height: 20),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
