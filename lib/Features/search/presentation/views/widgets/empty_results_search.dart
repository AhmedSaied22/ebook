import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class EmptyResultsSearch extends StatelessWidget {
  const EmptyResultsSearch({super.key, this.searchInput});
  final String? searchInput;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.priority_high_rounded,
            color: Colors.grey,
            size: 60,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'No results found for',
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            searchInput!,
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: Styles.textStyle18.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
