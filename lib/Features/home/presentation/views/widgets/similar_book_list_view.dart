import 'package:e_book/Features/home/presentation/manger/relevance%20books%20cubit/relevance_books_cubit.dart';
import 'package:e_book/Features/home/presentation/views/widgets/custom_book_poster.dart';
import 'package:e_book/core/utils/app_router.dart';
import 'package:e_book/core/utils/constants.dart';
import 'package:e_book/core/widgets/custom_error.dart';
import 'package:e_book/core/widgets/shimmer_list_featured.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,
                          extra: state.books[index]);
                    },
                    child: CustomBookPoster(
                      imageUrl: state
                              .books[index].volumeInfo?.imageLinks?.thumbnail ??
                          kImageDefault,
                      aspectRatio: 0.65,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is RelevanceBooksFailure) {
          return CustomErrWidget(errMessage: state.errMessage);
        } else {
          return SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: const ShimmerFeaturedListView());
        }
      },
    );
  }
}
