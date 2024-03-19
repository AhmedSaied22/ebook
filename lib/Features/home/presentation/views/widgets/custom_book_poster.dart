import 'package:e_book/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookPoster extends StatelessWidget {
  const CustomBookPoster({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.65,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage(AssetsData.test)),
        ),
      ),
    );
  }
}
