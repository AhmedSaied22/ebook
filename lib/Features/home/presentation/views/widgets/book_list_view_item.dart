import 'package:e_book/Features/home/data/models/book_model/book_model.dart';
import 'package:e_book/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:e_book/Features/home/presentation/views/widgets/custom_book_poster.dart';
import 'package:e_book/core/utils/app_router.dart';
import 'package:e_book/core/utils/constants.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 135,
        child: Row(
          children: [
            CustomBookPoster(
              imageUrl:
                  bookModel.volumeInfo?.imageLinks?.thumbnail ?? kImageDefault,
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 6),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo!.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    bookModel.volumeInfo!.authors![0],
                    style: Styles.textStyle14.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text('Free',
                          style: Styles.textStyle18
                              .copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(width: 44.3),
                      BookRating(
                        rating: bookModel.volumeInfo!.averageRating ?? 4.0,
                        count: bookModel.volumeInfo!.ratingsCount ?? 100,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
