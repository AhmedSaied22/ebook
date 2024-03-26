import 'package:e_book/Features/search/presentation/manger/search%20books%20cubit/search_books_cubit.dart';
import 'package:e_book/Features/search/presentation/views/widgets/custom_search_book_card.dart';
import 'package:e_book/Features/search/presentation/views/widgets/empty_results_search.dart';
import 'package:e_book/Features/search/presentation/views/widgets/no_search_yet.dart';
import 'package:e_book/core/widgets/custom_error.dart';
import 'package:e_book/core/widgets/shimmer_list_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (BlocProvider.of<SearchBooksCubit>(context).searchInput != null) {
          if (state is SearchBooksSuccess) {
            return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.books.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: CustomSearchBookCard(
                      bookModel: state.books[index],
                    ),
                  );
                }));
          } else if (state is SearchBooksEmptyResults) {
            return EmptyResultsSearch(
                searchInput:
                    BlocProvider.of<SearchBooksCubit>(context).searchInput);
          } else if (state is SearchBooksFailure) {
            return const CustomErrWidget(errMessage: 'Opps try again');
          } else {
            return const LoadingShimmerList();
          }
        } else {
          return const NoSearchYet();
        }
      },
    );
  }
}
