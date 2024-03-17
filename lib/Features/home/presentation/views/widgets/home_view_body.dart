import 'package:e_book/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:e_book/Features/home/presentation/views/widgets/custom_list_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomListItem(),
      ],
    );
  }
}
