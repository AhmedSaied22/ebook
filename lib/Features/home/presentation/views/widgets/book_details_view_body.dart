import 'package:e_book/Features/home/presentation/views/widgets/book_price_preview_button.dart';
import 'package:e_book/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:e_book/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:e_book/Features/home/presentation/views/widgets/custom_book_poster.dart';
import 'package:e_book/Features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          SizedBox(width: width * 0.43, child: const CustomBookPoster()),
          const SizedBox(height: 40),
          const Text('The Jungle Book', style: Styles.textStyle30),
          const SizedBox(height: 4),
          Opacity(
            opacity: 0.7,
            child: Text('Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal)),
          ),
          const SizedBox(height: 14),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 32),
          const BookPricePreviewButton(),
          const SizedBox(height: 45),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 16),
          const SimilarBookListView(),
        ],
      ),
    );
  }
}
