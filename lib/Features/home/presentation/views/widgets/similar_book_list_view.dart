import 'package:e_book/Features/home/presentation/manger/relevance%20books%20cubit/relevance_books_cubit.dart';
import 'package:e_book/Features/home/presentation/views/widgets/custom_book_poster.dart';
import 'package:e_book/core/utils/constants.dart';
import 'package:e_book/core/widgets/custom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelevanceBooksCubit, RelevanceBooksState>(
      builder: (context, state) {
        if (state is RelevanceBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CustomBookPoster(
                    imageUrl:
                        state.books[index].volumeInfo?.imageLinks?.thumbnail ??
                            kImageDefault,
                  ),
                );
              },
            ),
          );
        } else if (state is RelevanceBooksFailure) {
          return CustomErrWidget(errMessage: state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
