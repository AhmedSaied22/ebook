import 'package:e_book/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:e_book/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:e_book/Features/home/presentation/views/widgets/custom_book_poster.dart';
import 'package:e_book/core/utils/constants.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        SizedBox(
            width: width * 0.43,
            child: const CustomBookPoster(
              imageUrl: kImageDefault,
            )),
        const SizedBox(height: 40),
        const Text('The Jungle Book', style: Styles.textStyle30),
        const SizedBox(height: 4),
        Opacity(
          opacity: 0.7,
          child: Text('Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.normal)),
        ),
        const SizedBox(height: 14),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 4.0,
          count: 100,
        ),
      ],
    );
  }
}
