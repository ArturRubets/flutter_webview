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
    return Center(
      child: Column(
        children: const [
          SizedBox(height: 145),
          _HistoryItem(),
        ],
      ),
    );
  }
}

class _HistoryItem extends StatelessWidget {
  const _HistoryItem();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(1),
          width: 284,
          height: 111,
          alignment: Alignment.center,
          decoration: HistoryScreenStyle.historyItemOuter,
          child: Container(
            alignment: Alignment.center,
            decoration: HistoryScreenStyle.historyItemInner,
            child: const Center(
              child: Text(
                'Text_text_teааааааааааааааxtівмівмві',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Positioned(
          top: 15,
          right: 15,
          child: Image.asset(
            AppImages.close,
            width: 13,
            height: 13,
          ),
        ),
      ],
    );
  }
}
