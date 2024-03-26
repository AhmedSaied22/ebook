import 'package:e_book/Features/home/data/models/book_model/book_model.dart';
import 'package:e_book/Features/home/presentation/views/widgets/book_price_preview_button.dart';
import 'package:e_book/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:e_book/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          //hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BookDetailsSection(
                  book: book,
                ),
                const SizedBox(height: 32),
                BookPricePreviewButton(
                  bookModel: book,
                ),
                const SizedBox(height: 45),
                const SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
