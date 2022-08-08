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
    return ColoredBox(
      color: AppColors.green9,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            children: [
              const SizedBox(height: 125),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _SettingsCircle(
                    Image.asset(
                      AppImages.settingsButton,
                      width: 38,
                      height: 38,
                    ),
                  ),
                  _SettingsCircle(
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF00FFC2),
                            Color(0xFF1C7474),
                          ],
                          stops: [0.375, 1],
                        ).createShader(bounds);
                      },
                      child: Image.asset(
                        AppImages.settingsButton,
                        width: 38,
                        height: 38,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(AppImages.playButton),
                  ShaderMask(
                    shaderCallback: (bounds) {
                      return const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF00FFC2),
                          Color(0xFF1C7474),
                        ],
                        stops: [0.375, 1],
                      ).createShader(bounds);
                    },
                    child: Image.asset(AppImages.playButton),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _SettingsCircle(
                    Image.asset(
                      AppImages.soundButton,
                      width: 38,
                      height: 38,
                    ),
                  ),
                  _SettingsCircle(
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF00FFC2),
                            Color(0xFF1C7474),
                          ],
                          stops: [0.375, 1],
                        ).createShader(bounds);
                      },
                      child: Image.asset(
                        AppImages.soundButton,
                        width: 38,
                        height: 38,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SettingsCircle extends StatelessWidget {
  const _SettingsCircle(this.image);

  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 65,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF1DA876),
            Color(0xFF002B0E),
          ],
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 10,
            color: Color(0xBF00FFE0),
          ),
        ],
      ),
      child: Center(
        child: image,
      ),
    );
  }
}
