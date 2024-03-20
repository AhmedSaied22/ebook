import 'package:e_book/Features/home/presentation/views/widgets/book_price_preview_button.dart';
import 'package:e_book/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:e_book/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BookDetailsSection(),
                SizedBox(height: 32),
                BookPricePreviewButton(),
                SizedBox(height: 45),
                SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
