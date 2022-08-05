import 'package:flutter/material.dart';

import '../../../resources/resources.dart';
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
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/background.png'),
              fit: BoxFit.fill,
            ),
          ),
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
