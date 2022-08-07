import 'package:flutter/material.dart';

import '../../../common_widgets/background_with_football_image.dart';
import '../widgets/button_to_game.dart';
import '../widgets/button_to_webview.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
    required this.url,
  });

  static const String routeName = '/';
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWithFootballImage(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonToWebview(url: url),
            const SizedBox(height: 60),
            const ButtonToGame(),
          ],
        ),
      ),
    );
  }
}
