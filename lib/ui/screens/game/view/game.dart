import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';
import '../../../common_widgets/app_bar_game.dart';

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
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'GAME',
      //     style: GameScreenStyle.title,
      //   ),
      //   centerTitle: true,
      // ),
      body: ColoredBox(
        color: AppColors.green9,
        child: Column(
          children: [
            AppBarGame(title: 'GAME'),
          ],
        ),
      ),
    );
  }
}
