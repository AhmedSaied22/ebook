import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidigAnimation,
  });

  final Animation<Offset> slidigAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        //animatedbuilder to build this widget only when the value of the animation changes.
        animation: slidigAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidigAnimation,
            child: const Text(
              'Reading is more than a passion.',
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
