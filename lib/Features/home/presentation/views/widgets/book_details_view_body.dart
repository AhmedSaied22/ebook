import 'package:e_book/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:e_book/Features/home/presentation/views/widgets/custom_book_poster.dart';
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
          const SizedBox(
            height: 28,
          ),
          SizedBox(width: width * 0.44, child: const CustomBookPoster()),
        ],
      ),
    );
  }
}
