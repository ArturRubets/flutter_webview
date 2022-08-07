import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../../../../resources/resources.dart';
import '../../../common_widgets/background_with_football_image.dart';
import '../../home/view/my_app.dart';

class MenuGame extends StatelessWidget {
  const MenuGame({super.key});

  static void route(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => const MenuGame(),
      ),
    );
    unawaited(OneSignal.shared.sendTag('tag', 'game'));
  }

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
                        'assets/image/x.png',
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
                      children: const [
                        _TextGame(),
                        SizedBox(height: 56),
                        _ButtonMenu('new game'),
                        SizedBox(height: 26),
                        _ButtonMenu('continue'),
                        SizedBox(height: 26),
                        _ButtonMenu('history'),
                        SizedBox(height: 26),
                        _ButtonMenu('settings'),
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

class _ButtonMenu extends StatefulWidget {
  const _ButtonMenu(this.name);

  final String name;

  @override
  State<_ButtonMenu> createState() => _ButtonMenuState();
}

class _ButtonMenuState extends State<_ButtonMenu> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    final decorationOuter = isClicked
        ? MenuGameScreenStyle.mainMenuButtonDecorationOuterClicked
        : MenuGameScreenStyle.mainMenuButtonDecorationOuter;
    final decorationInner = isClicked
        ? MenuGameScreenStyle.mainMenuButtonDecorationOuterInnerClicked
        : MenuGameScreenStyle.mainMenuButtonDecorationOuterInner;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (details) {
        setState(() {
          isClicked = true;
        });
      },
      onTapCancel: () {
        setState(() {
          isClicked = false;
        });
      },
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return const MyApp(
              url: '',
            );
          },
        ));
        setState(() {
          isClicked = false;
        });
      },
      child: Container(
        decoration: decorationOuter,
        padding: const EdgeInsets.all(0.6),
        alignment: Alignment.center,
        child: Container(
          width: 300,
          height: 67,
          alignment: Alignment.center,
          decoration: decorationInner,
          child: Text(
            widget.name,
            style: MenuGameScreenStyle.textMainMenuButtons,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class _TextGame extends StatelessWidget {
  const _TextGame();

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.yellow1,
            AppColors.blue,
          ],
        ).createShader(bounds);
      },
      child: const Text(
        'GAME',
        textAlign: TextAlign.center,
        style: MenuGameScreenStyle.textMainMenuTitle,
      ),
    );
  }
}
