import 'package:e_book/core/utils/app_router.dart';
import 'package:e_book/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 6, right: 30, bottom: 24, top: 4),
        child: Row(
          children: [
            Image.asset(
              AssetsData.logo,
              width: MediaQuery.of(context).size.aspectRatio * 200,
              height: MediaQuery.of(context).size.aspectRatio * 200,
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
              ),
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSearchView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
