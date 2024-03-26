import 'package:e_book/Features/home/data/models/book_model/book_model.dart';
import 'package:e_book/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:e_book/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:e_book/Features/home/presentation/views/widgets/custom_book_poster.dart';
import 'package:e_book/core/utils/constants.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        SizedBox(
            width: width * 0.43,
            child: CustomBookPoster(
              imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? kImageDefault,
              aspectRatio: 0.65,
            )),
        const SizedBox(height: 40),
        Text(
          book.volumeInfo!.title!,
          style: Styles.textStyle30,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Opacity(
          opacity: 0.7,
          child: Text(book.volumeInfo?.authors?[0] ?? 'unknown',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.normal)),
        ),
        const SizedBox(height: 14),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: book.volumeInfo?.averageRating ?? 4,
          count: book.volumeInfo?.ratingsCount ?? 100,
        ),
      ],
    );
  }
}
