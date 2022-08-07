import 'package:flutter/material.dart';

import '../../resources/app_images.dart';

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
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
