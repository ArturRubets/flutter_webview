import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWidget extends StatelessWidget {
  const WebViewWidget({super.key, required this.url});

  final String url;

  static void route(BuildContext context, String url) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => WebViewWidget(url: url),
      ),
    );
    unawaited(OneSignal.shared.sendTag('tag', 'about'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
