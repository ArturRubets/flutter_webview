import 'package:flutter/material.dart';

import '../../resources/resources.dart';

class AppBarGame extends StatefulWidget {
  const AppBarGame({
    super.key,
    required this.title,
    required this.settings,
    required this.history,
    required this.newGame,
    required this.continueGame,
  });

  static const toolbarHeightMin = 90.0;
  static const toolbarHeightMax = 412.0;
  static const duration = Duration(milliseconds: 700);
  final String title;
  final void Function() settings;
  final void Function() history;
  final void Function() newGame;
  final void Function() continueGame;

  @override
  State<AppBarGame> createState() => _AppBarGameState();
}

class _AppBarGameState extends State<AppBarGame> with TickerProviderStateMixin {
  double toolbarHeight = AppBarGame.toolbarHeightMin;
  bool isTapMenu = false;

  late final AnimationController _controller = AnimationController(
    duration: AppBarGame.duration,
    vsync: this,
  );
  late final Animation<double> _animationMenu = CurvedAnimation(
    parent: _controller,
    curve: const Interval(
      0.2,
      1,
      curve: Curves.easeIn,
    ),
  );
  late final Animation<double> _animationTitle = Tween<double>(
    begin: 1,
    end: 0,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: const Interval(
        0,
        0.2,
        curve: Curves.easeIn,
      ),
    ),
  );

  void onTapMenu() {
    setState(() {
      isTapMenu = !isTapMenu;
      if (isTapMenu) {
        _controller.forward();
        toolbarHeight = AppBarGame.toolbarHeightMax;
      } else {
        _controller.reverse();
        toolbarHeight = AppBarGame.toolbarHeightMin;
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final paddingSystemUI = MediaQuery.of(context).padding;
    final title = Text(
      widget.title,
      style: GameScreenStyle.title,
    );

    return AnimatedContainer(
      duration: AppBarGame.duration,
      margin: EdgeInsets.only(top: paddingSystemUI.top),
      height: toolbarHeight,
      constraints:
          const BoxConstraints(minHeight: 90, minWidth: double.infinity),
      decoration: GameScreenStyle.appBar,
      child: Stack(
        alignment: Alignment.center,
        children: [
          FadeTransition(
            opacity: _animationMenu,
            child: ListView(
              shrinkWrap: true,
              children: [
                ButtonMenu(
                  name: 'new game',
                  onTap: () {
                    widget.newGame();
                    onTapMenu();
                  },
                ),
                ButtonMenu(
                  name: 'continue',
                  onTap: () {
                    widget.continueGame();
                    onTapMenu();
                  },
                ),
                ButtonMenu(
                  name: 'history',
                  onTap: () {
                    widget.history();
                    onTapMenu();
                  },
                ),
                ButtonMenu(
                  name: 'settings',
                  onTap: () {
                    widget.settings();
                    onTapMenu();
                  },
                ),
              ],
            ),
          ),
          FadeTransition(
            opacity: _animationTitle,
            child: title,
          ),
          Positioned(
            top: 27,
            right: 25,
            child: GestureDetector(
              onTap: onTapMenu,
              child: Image.asset(
                AppImages.iconMenu,
                width: 46,
                height: 32,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ButtonMenu extends StatefulWidget {
  const ButtonMenu({
    super.key,
    required this.name,
    required this.onTap,
  });

  final String name;
  final VoidCallback onTap;

  @override
  State<ButtonMenu> createState() => _ButtonMenuState();
}

class _ButtonMenuState extends State<ButtonMenu> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    final style = isClicked
        ? GameScreenStyle.menuButtonClicked
        : GameScreenStyle.menuButton;

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
          isClicked = true;
        });

        Future.delayed(
          const Duration(milliseconds: 300),
          () => setState(() => isClicked = false),
        );
      },
      child: Center(
        // ignore: sized_box_for_whitespace
        child: Container(
          height: 73,
          width: 334,
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              widget.name,
              style: style,
            ),
          ),
        ),
      ),
    );
  }
}
