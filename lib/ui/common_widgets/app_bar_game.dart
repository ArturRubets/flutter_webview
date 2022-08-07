import 'package:flutter/material.dart';

import '../../resources/resources.dart';

class AppBarGame extends StatefulWidget {
  const AppBarGame({super.key, required this.title});

  final String title;

  @override
  State<AppBarGame> createState() => _AppBarGameState();
}

class _AppBarGameState extends State<AppBarGame> {
  static const duration = Duration(milliseconds: 200);
  double toolbarHeight = 69;
  bool isTapMenu = false;

  void onTapMenu() {
    setState(() {
      toolbarHeight = isTapMenu ? 412 : 69;
      isTapMenu = !isTapMenu;
    });
  }

  @override
  Widget build(BuildContext context) {
    final paddingSystemUI = MediaQuery.of(context).padding;

    return AnimatedContainer(
      padding: EdgeInsets.only(top: paddingSystemUI.top),
      height: toolbarHeight + paddingSystemUI.top,
      decoration: GameScreenStyle.appBar,
      duration: duration,
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            child: Text(
              widget.title,
              style: GameScreenStyle.title,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: GestureDetector(
                  onTap: onTapMenu,
                  child: Image.asset(
                    AppImages.iconMenu,
                    width: 46,
                    height: 32,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
