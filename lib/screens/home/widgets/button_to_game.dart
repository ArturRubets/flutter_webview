import 'package:flutter/material.dart';

import '../../../resources/resources.dart';
import '../../menu_game/view/menu_game.dart';

class ButtonToGame extends StatelessWidget {
  const ButtonToGame({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => MenuGame.route(context),
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: AppStyle.redButtonDecorationOuter,
        child: Container(
          width: 310,
          height: 100,
          alignment: Alignment.center,
          decoration: AppStyle.redButtonDecorationInner,
          child: const Text(
            'GAME',
            style: AppStyle.button,
          ),
        ),
      ),
    );
  }
}
