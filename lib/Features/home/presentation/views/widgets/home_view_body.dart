import 'package:e_book/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:e_book/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:e_book/Features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 30),
        child: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  FeaturedBooksListView(),
                  SizedBox(height: 40),
                  Text(
                    'Newest Books',
                    style: Styles.textStyle18,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
          body: const BestSellerListView(),
        ));
  }
}
