import 'package:e_book/Features/home/presentation/manger/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:e_book/Features/home/presentation/views/widgets/custom_book_poster.dart';
import 'package:e_book/core/utils/app_router.dart';
import 'package:e_book/core/widgets/custom_error.dart';
import 'package:e_book/core/widgets/shimmer_list_featured.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../../../../../core/utils/constants.dart';

class FeaturedBooksListView extends StatefulWidget {
  const FeaturedBooksListView({
    super.key,
    required this.size,
  });
  final Size size;

  @override
  State<FeaturedBooksListView> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
  late int selectedItem;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: widget.size.height / 3.1,
            child: ScrollSnapList(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: GestureDetector(
                    onTap: () {
                      onTapRouter(index, context, state);
                    },
                    child: CustomBookPoster(
                      imageUrl: state
                              .books[index].volumeInfo?.imageLinks?.thumbnail ??
                          kImageDefault,
                      aspectRatio: 0.675,
                    ),
                  ),
                );
              },
              itemSize: widget.size.height * 0.225,
              dynamicItemSize: true,
              onItemFocus: (index) {
                selectedItem = index;
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const ShimmerFeaturedListView();
        }
      },
    );
  }

  void onTapRouter(
      int index, BuildContext context, FeaturedBooksSuccess state) {
    if (index == selectedItem) {
      GoRouter.of(context)
          .push(AppRouter.kBookDetailsView, extra: state.books[index]);
    }
  }
}
