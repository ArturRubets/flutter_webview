import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';

class ButtonMenu extends StatefulWidget {
  const ButtonMenu({super.key, required this.name, required this.onTap});

  final String name;
  final VoidCallback onTap;

  @override
  State<ButtonMenu> createState() => _ButtonMenuState();
}

class _ButtonMenuState extends State<ButtonMenu> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    final decorationOuter = isClicked
        ? MenuGameScreenStyle.mainMenuButtonDecorationOuterClicked
        : MenuGameScreenStyle.mainMenuButtonDecorationOuter;
    final decorationInner = isClicked
        ? MenuGameScreenStyle.mainMenuButtonDecorationOuterInnerClicked
        : MenuGameScreenStyle.mainMenuButtonDecorationOuterInner;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (_) {
        setState(() {
          isClicked = true;
        });
      },
      onTapCancel: () {
        setState(() {
          isClicked = false;
        });
      },
      onTap: () {
        widget.onTap();
        setState(() {
          isClicked = false;
        });
      },
      child: Container(
        decoration: decorationOuter,
        padding: const EdgeInsets.all(0.6),
        alignment: Alignment.center,
        child: Container(
          width: 300,
          height: 67,
          alignment: Alignment.center,
          decoration: decorationInner,
          child: Text(
            widget.name,
            style: MenuGameScreenStyle.textButtons,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
