import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';

class NameGame extends StatelessWidget {
  const NameGame({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.yellow1,
            AppColors.blue,
          ],
        ).createShader(bounds);
      },
      child: const Text(
        'GAME',
        textAlign: TextAlign.center,
        style: MenuGameScreenStyle.textMainMenuTitle,
      ),
    );
  }
}
