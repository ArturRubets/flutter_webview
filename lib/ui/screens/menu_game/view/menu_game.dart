import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';
import '../../../common_widgets/background_with_football_image.dart';
import '../../game_setup/view/game_setup.dart';
import '../widgets/button_menu.dart';
import '../widgets/name_game.dart';

class MenuGame extends StatelessWidget {
  const MenuGame({super.key});

  static const String routeName = 'menuGame';
  static void route(BuildContext context) =>
      Navigator.of(context).pushNamed(routeName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWithFootballImage(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 27),
            padding: const EdgeInsets.all(1),
            decoration: MenuGameScreenStyle.menuDecorationOuter,
            child: Container(
              height: 630,
              width: 375,
              decoration: MenuGameScreenStyle.menuDecorationInner,
              child: Stack(
                children: [
                  Positioned(
                    right: 17,
                    top: 20,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Image.asset(
                        AppImages.close,
                        width: 13,
                        height: 13,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 17,
                    right: 17,
                    child: Column(
                      children: [
                        const NameGame(),
                        const SizedBox(height: 56),
                        ButtonMenu(
                          name: 'new game',
                          onTap: () => GameSetup.route(context, 1),
                        ),
                        const SizedBox(height: 26),
                        ButtonMenu(
                          name: 'continue',
                          onTap: () => GameSetup.route(context, 1),
                        ),
                        const SizedBox(height: 26),
                        ButtonMenu(
                          name: 'history',
                          onTap: () => GameSetup.route(context, 2),
                        ),
                        const SizedBox(height: 26),
                        ButtonMenu(
                          name: 'settings',
                          onTap: () => GameSetup.route(context, 3),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
