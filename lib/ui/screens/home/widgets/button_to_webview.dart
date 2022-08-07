import 'package:flutter/material.dart';

import '../../../../resources/resources.dart';
import '../../webview/view/web_view.dart';

class ButtonToWebview extends StatelessWidget {
  const ButtonToWebview({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => WebViewWidget.route(context, url),
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: HomeScreenStyle.greenButtonDecorationOuter,
        child: Container(
          width: 310,
          height: 100,
          alignment: Alignment.center,
          decoration: HomeScreenStyle.greenButtonDecorationInner,
          child: const Text(
            'SITE',
            style: HomeScreenStyle.button,
          ),
        ),
      ),
    );
  }
}
