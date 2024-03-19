import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 8, bottom: 24, top: 24),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.close,
                size: 24,
              ),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
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
