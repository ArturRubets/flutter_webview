import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';
import '../../../common_widgets/app_bar_game.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  static const routeName = 'settings';
  static void route(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      routeName,
      ModalRoute.withName('/'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBarGame(title: 'settings'),
      body: ColoredBox(
        color: AppColors.green9,
        child: SizedBox.expand(),
      ),
    );
  }
}
