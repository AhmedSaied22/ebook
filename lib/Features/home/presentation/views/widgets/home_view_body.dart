import 'package:e_book/Features/home/presentation/views/widgets/newest_list_view.dart';
import 'package:e_book/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:e_book/Features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:e_book/Features/home/presentation/views/widgets/refresh.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return RefreshIndicator(
      onRefresh: () => refreshData(context),
      child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: NestedScrollView(
            physics: const BouncingScrollPhysics(),
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomAppBar(),
                    FeaturedBooksListView(
                      size: size,
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'Newest Books',
                      style: Styles.textStyle18,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
            body: const Padding(
              padding: EdgeInsets.only(bottom: 12.0),
              child: BestSellerListView(),
            ),
          )),
    );
  }
}
