import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';
import '../../../common_widgets/background_with_football_image.dart';
import '../../game/view/game.dart';
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
                          onTap: () => Game.route(context),
                        ),
                        const SizedBox(height: 26),
                        ButtonMenu(
                          name: 'continue',
                          onTap: () {},
                        ),
                        const SizedBox(height: 26),
                        ButtonMenu(
                          name: 'history',
                          onTap: () {},
                        ),
                        const SizedBox(height: 26),
                        ButtonMenu(
                          name: 'settings',
                          onTap: () {},
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
