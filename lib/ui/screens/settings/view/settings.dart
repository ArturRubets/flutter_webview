import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  static const routeName = 'settings';
  static void route(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      routeName,
      ModalRoute.withName('/'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ColoredBox(
        color: AppColors.green9,
        child: Center(
          child: Text('Settings'),
        ),
      ),
    );
  }
}
