import 'package:flutter/material.dart';

import 'resources.dart';

abstract class HomeScreenStyle {
  static const button = TextStyle(
    color: AppColors.white,
    height: 68 / 58,
    fontSize: 58,
    fontWeight: FontWeight.w400,
    letterSpacing: 58 * 0.02,
  );
  static const greenButtonDecorationOuter = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(18)),
    gradient: LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        AppColors.blue,
        AppColors.white,
      ],
    ),
    boxShadow: [
      BoxShadow(
        color: AppColors.blackOpacity55,
        blurRadius: 9,
        offset: Offset(0, 13.5),
      ),
    ],
  );

  static const greenButtonDecorationInner = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(18)),
    gradient: LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        AppColors.green5,
        AppColors.green3,
        AppColors.green1,
      ],
      stops: [0, 0.51, 1],
    ),
  );

  static const redButtonDecorationOuter = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(18)),
    gradient: LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [
        AppColors.white,
        AppColors.yellow1,
      ],
    ),
    boxShadow: [
      BoxShadow(
        color: AppColors.blackOpacity55,
        blurRadius: 9,
        offset: Offset(0, 13.5),
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

abstract class MenuGameScreenStyle {
  static const menuDecorationOuter = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColors.blue,
        AppColors.white,
      ],
    ),
  );

  static const menuDecorationInner = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColors.green4,
        AppColors.green2,
      ],
    ),
  );

  static const textTitle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 64,
    height: 75 / 64,
    letterSpacing: 64 * 0.02,
    color: AppColors.white,
    shadows: [
      BoxShadow(
        color: AppColors.blackOpacity45,
        blurRadius: 5,
        offset: Offset(0, 5),
      ),
    ],
  );

  static const textButtons = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 40,
    height: 37 / 40,
    letterSpacing: 40 * 0.02,
    color: AppColors.white,
    fontStyle: FontStyle.normal,
  );
  static const mainMenuButtonDecorationOuter = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(62)),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColors.white,
        AppColors.blue,
      ],
    ),
    boxShadow: [
      BoxShadow(
        color: AppColors.blackOpacity55,
        blurRadius: 6.17,
        offset: Offset(0, 9.25),
      ),
    ],
  );

  static const mainMenuButtonDecorationOuterClicked = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(62)),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColors.white,
        AppColors.blue,
      ],
    ),
    boxShadow: [
      BoxShadow(
        offset: Offset(0, 9.25),
        blurRadius: 6.17,
        color: AppColors.blueOpacity55,
      ),
    ],
  );

  static const mainMenuButtonDecorationOuterInner = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(62)),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColors.green6,
        AppColors.green7,
      ],
    ),
  );

  static const mainMenuButtonDecorationOuterInnerClicked = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(62)),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColors.green6,
        AppColors.green8,
      ],
    ),
  );
}

abstract class GameScreenStyle {
  static const title = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 36,
    height: 42 / 36,
    letterSpacing: 36 * 0.02,
    color: AppColors.white,
  );
  static const appBar = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColors.green3,
        AppColors.green10,
      ],
    ),
    boxShadow: [
      BoxShadow(
        offset: Offset(0, 7),
        blurRadius: 7,
        color: AppColors.blackOpacity25,
      ),
    ],
  );
}
