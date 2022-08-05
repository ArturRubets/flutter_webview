import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../../../common_widgets/background_with_football_image.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
