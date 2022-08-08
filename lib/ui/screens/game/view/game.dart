import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';

class Game extends StatelessWidget {
  const Game({super.key});

  static const routeName = 'game';
  static void route(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      routeName,
      ModalRoute.withName('/'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.green9,
      child: Center(
        child: Text('Game ${Random().nextInt(100)}'),
      ),
    );
  }
}
