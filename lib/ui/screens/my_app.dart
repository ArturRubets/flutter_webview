import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../../resources/resources.dart';
import 'game/view/game.dart';
import 'home/view/home.dart';
import 'menu_game/view/menu_game.dart';
import 'webview/view/web_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: AppFonts.jura),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => Home(url: url));
          case 'webView':
            final url = (settings.arguments ?? '') as String;
            if (url.isEmpty) {
              break;
            }
            unawaited(OneSignal.shared.sendTag('tag', 'about'));
            return MaterialPageRoute<void>(
              builder: (_) => WebViewWidget(url: url),
            );
          case 'menuGame':
            unawaited(OneSignal.shared.sendTag('tag', 'game'));
            return MaterialPageRoute<void>(
              builder: (_) => const MenuGame(),
            );
          case 'game':
            return MaterialPageRoute<void>(
              builder: (_) => const Game(),
            );
        }

        return MaterialPageRoute<void>(
          builder: (_) => const _Error(),
        );
      },
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
