import 'package:flutter/material.dart';

import '../../../../resources/app_colors.dart';

class Game extends StatelessWidget {
  const Game({super.key});

  static void route(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      'game',
      ModalRoute.withName('/'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GAME'),
        centerTitle: true,
        actions: [],
        leading: null,
      ),
      body: Container(
        color: AppColors.green9,
      ),
    );
  }
}
