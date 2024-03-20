import 'package:e_book/Features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: BookListViewItem(),
      );
    }));
  }
}
