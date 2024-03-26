import 'package:e_book/Features/home/data/models/book_model/book_model.dart';
import 'package:e_book/core/utils/constants.dart';
import 'package:e_book/core/utils/function/launch_url.dart';
import 'package:e_book/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookPricePreviewButton extends StatelessWidget {
  const BookPricePreviewButton({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              text: 'Free',
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(14),
                  topLeft: Radius.circular(14)),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                launchCustomUrl(context, bookModel.volumeInfo?.previewLink);
              },
              backgroundColor: kSecondaryColor,
              textColor: Colors.white,
              text: getText(bookModel),
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(14),
                  topRight: Radius.circular(14)),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo?.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Preview';
    }
  }
}
