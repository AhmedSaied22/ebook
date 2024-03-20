import 'package:e_book/Features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:e_book/Features/search/presentation/views/widgets/search_results_list_view.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSearchTextField(),
                SizedBox(height: 20),
                Text(
                  'Search Results: ',
                  style: Styles.textStyle18,
                ),
                SizedBox(height: 16),
              ],
            )),
            SearchResultsListView(),
          ],
        ));
  }
}
