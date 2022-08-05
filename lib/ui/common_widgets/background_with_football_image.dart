import 'package:flutter/material.dart';

class BackgroundWithFootballImage extends StatelessWidget {
  const BackgroundWithFootballImage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/background.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
