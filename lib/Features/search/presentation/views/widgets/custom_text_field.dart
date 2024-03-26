import 'package:e_book/Features/search/presentation/manger/search%20books%20cubit/search_books_cubit.dart';
import 'package:e_book/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      onChanged: (value) {
        searchController.text = value;
        BlocProvider.of<SearchBooksCubit>(context).searchInput =
            searchController.text;
        BlocProvider.of<SearchBooksCubit>(context)
            .fetchSearchBooks(searchInput: searchController.text);
      },
      cursorColor: Colors.white,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        prefixIcon: const Icon(
          Icons.menu_book_outlined,
          color: kSecondaryColor,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            BlocProvider.of<SearchBooksCubit>(context).searchInput =
                searchController.text;
            BlocProvider.of<SearchBooksCubit>(context)
                .fetchSearchBooks(searchInput: searchController.text);
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: kSecondaryColor,
          ),
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
