import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';

class History extends StatelessWidget {
  const History({super.key});

  static const routeName = 'history';
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
          child: Text('History'),
        ),
      ),
    );
  }
}
