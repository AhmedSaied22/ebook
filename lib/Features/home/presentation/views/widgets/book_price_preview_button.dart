import 'package:e_book/core/utils/constants.dart';
import 'package:e_book/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookPricePreviewButton extends StatelessWidget {
  const BookPricePreviewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              text: '19.99@',
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(14),
                  topLeft: Radius.circular(14)),
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: kSecondaryColor,
              textColor: Colors.white,
              text: 'Free Preview',
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(14),
                  topRight: Radius.circular(14)),
            ),
          ),
        ],
      ),
    );
  }
}
