import 'package:e_book/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 8, bottom: 24, top: 4),
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
