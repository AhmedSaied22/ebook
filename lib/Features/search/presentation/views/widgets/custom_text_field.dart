import 'package:e_book/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        prefixIcon: const Icon(
          Icons.menu_book_outlined,
          color: kSecondaryColor,
        ),
        suffixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: kSecondaryColor,
        ),
        hintText: 'Enter book name',
        enabledBorder: myOutlineInputBorder(),
        focusedBorder: myOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder myOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: kSecondaryColor,
      ),
      borderRadius: BorderRadius.circular(14),
    );
  }
}
