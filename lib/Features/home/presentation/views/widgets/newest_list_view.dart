import 'package:e_book/Features/home/presentation/manger/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:e_book/Features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:e_book/core/widgets/custom_error.dart';
import 'package:e_book/core/widgets/shimmer_list_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
      if (state is NewestBooksSuccess) {
        return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: BookListViewItem(
                bookModel: state.books[index],
              ),
            );
          },
        );
      } else if (state is NewestBooksFailure) {
        return CustomErrWidget(errMessage: state.errMessage);
      } else {
        return const LoadingShimmerList();
      }
    });
  }
}
