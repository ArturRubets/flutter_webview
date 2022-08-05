import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';
import '../../../common_widgets/background_with_football_image.dart';
import '../widgets/button_to_game.dart';
import '../widgets/button_to_webview.dart';

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
      home: Scaffold(
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
      ),
    );
  }
}
