import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../../resources/resources.dart';
import 'game/view/game.dart';
import 'game_setup/view/game_setup.dart';
import 'history/view/history.dart';
import 'home/view/home.dart';
import 'menu_game/view/menu_game.dart';
import 'settings/view/settings.dart';
import 'webview/view/web_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.url,
  });

  final String url;

  Route<Object?> _onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.routeName:
        return MaterialPageRoute(builder: (_) => Home(url: url));
      case WebViewWidget.routeName:
        final url = (settings.arguments ?? '') as String;
        if (url.isEmpty) {
          break;
        }
        unawaited(OneSignal.shared.sendTag('tag', 'about'));
        return MaterialPageRoute<void>(
          builder: (_) => WebViewWidget(url: url),
        );
      case MenuGame.routeName:
        unawaited(OneSignal.shared.sendTag('tag', 'game'));
        return MaterialPageRoute<void>(
          builder: (_) => const MenuGame(),
        );
      case Game.routeName:
        return MaterialPageRoute<void>(
          builder: (_) => const Game(),
        );
      case Settings.routeName:
        return MaterialPageRoute<void>(
          builder: (_) => const Settings(),
        );
      case History.routeName:
        return MaterialPageRoute<void>(
          builder: (_) => const History(),
        );
      case GameSetup.routeName:
       final currentIndexPage = settings.arguments;
        if (currentIndexPage == null) {
          break;
        }
        return MaterialPageRoute<void>(
          builder: (_) => GameSetup(currentIndex: currentIndexPage as int),
        );
    }

    return MaterialPageRoute<void>(
      builder: (_) => const _Error(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: AppFonts.jura),
      onGenerateRoute: _onGenerateRoute,
    );
  }
}

class _Error extends StatelessWidget {
  const _Error();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Error',
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
