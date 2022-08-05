import 'package:flutter/material.dart';

import 'resources.dart';

abstract class AppStyle {
  static const button = TextStyle(
    color: Colors.white,
    height: 68 / 58,
    fontSize: 58,
    fontWeight: FontWeight.w400,
    letterSpacing: 58 * 0.02,
  );

  static final greenButtonDecorationOuter = BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(18)),
    gradient: const LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        AppColors.blue,
        AppColors.white,
      ],
    ),
    boxShadow: [
      BoxShadow(
        color: AppColors.black.withOpacity(0.55),
        blurRadius: 9,
        offset: const Offset(0, 13.5),
      ),
    ],
  );

  static const greenButtonDecorationInner = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(18)),
    gradient: LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        AppColors.green3,
        AppColors.green2,
        AppColors.green1,
      ],
      stops: [0, 0.51, 1],
    ),
  );

  static final redButtonDecorationOuter = BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(18)),
    gradient: const LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        AppColors.white,
        AppColors.yellow1,
      ],
    ),
    boxShadow: [
      BoxShadow(
        color: AppColors.black.withOpacity(0.55),
        blurRadius: 9,
        offset: const Offset(0, 13.5),
      ),
    ],
  );

  static const redButtonDecorationInner = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(18)),
    gradient: LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        AppColors.red3,
        AppColors.red2,
        AppColors.red1,
        AppColors.yellow2,
      ],
      stops: [0, 0.51, 0.53, 1],
    ),
  );
}
