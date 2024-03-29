import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_book/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomSearchBookPoster extends StatelessWidget {
  const CustomSearchBookPoster({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 0.67,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => Image.asset(AssetsData.logo),
          )),
    );
  }
}
