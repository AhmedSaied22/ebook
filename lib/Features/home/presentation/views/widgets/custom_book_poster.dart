import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_book/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookPoster extends StatelessWidget {
  const CustomBookPoster(
      {super.key, required this.imageUrl, required this.aspectRatio});
  final String imageUrl;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: aspectRatio,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => Image.asset(AssetsData.logo),
          )),
    );
  }
}
