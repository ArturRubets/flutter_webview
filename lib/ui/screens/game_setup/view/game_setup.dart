import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';
import '../../../common_widgets/app_bar_game.dart';
import '../../game/view/game.dart';
import '../../history/view/history.dart';
import '../../settings/view/settings.dart';
import '../model/button_info.dart';

// ignore: must_be_immutable
class GameSetup extends StatefulWidget {
  GameSetup({super.key, required this.currentIndex});

  static const routeName = 'gameSetup';
  int currentIndex = 0;
  static void route(BuildContext context, int currentIndex) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      routeName,
      ModalRoute.withName('/'),
      arguments: currentIndex,
    );
  }

  @override
  State<GameSetup> createState() => _GameSetupState();
}

class _GameSetupState extends State<GameSetup> {
  final _screensName = ['GAME', 'HISTORY', 'SETTINGS'];

  final _screens = <Widget>[
    const Game(),
    const History(),
    const Settings(),
  ];

  Widget _currentScreen = Game();

  void _setScreen(int indexScreen) {
    setState(() {
      widget.currentIndex = indexScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    final String title;
    switch (widget.currentIndex) {
      case 0:
        _currentScreen = Game();
        _screens.first = _currentScreen;
        title = _screensName.first;
        break;
      case 1:
        _currentScreen = _screens.first;
        title = _screensName.first;
        break;
      case 2:
        _currentScreen = _screens[1];
        title = _screensName[1];
        break;
      case 3:
        _currentScreen = _screens[2];
        title = _screensName[2];
        break;
      default:
        title = 'Unknown';
    }

    return Scaffold(
      body: ColoredBox(
        color: AppColors.green9,
        child: Stack(
          children: [
            _currentScreen,
            AppBarGame(
              title: title,
              newGame: () => _setScreen(0),
              continueGame: () => _setScreen(1),
              history: () => _setScreen(2),
              settings: () => _setScreen(3),
            ),
          ],
        ),
      ),
    );
  }
}
