import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NoSearchYet extends StatelessWidget {
  const NoSearchYet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Please, Search for Books', style: Styles.textStyle20));
  }
}
