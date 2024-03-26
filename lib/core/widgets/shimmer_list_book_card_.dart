import 'package:e_book/core/widgets/shimmer_component.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Shimmer shimmerLoadingCardEffect() {
  double width = 100, hight = 150;
  return Shimmer.fromColors(
    baseColor: Colors.white54,
    highlightColor: Colors.white24,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ShimmerCompo(width: width, hight: hight),
          const SizedBox(width: 25),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerCompo(hight: 20, width: 200),
              SizedBox(height: 10),
              ShimmerCompo(hight: 20, width: 130),
              SizedBox(height: 10),
              ShimmerCompo(hight: 20, width: 150),
            ],
          )
        ],
      ),
    ),
  );
}
