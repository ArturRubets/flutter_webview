import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';
import '../../../common_widgets/app_bar_game.dart';

class History extends StatelessWidget {
  const History({super.key});

  static const routeName = 'history';
  static void route(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      routeName,
      ModalRoute.withName('/'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBarGame(title: 'history'),
      body: ColoredBox(
        color: AppColors.green9,
        child: SizedBox.expand(),
      ),
    );
  }
}
