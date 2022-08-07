import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWidget extends StatelessWidget {
  const WebViewWidget({super.key, required this.url});

  static const String routeName = 'webView';
  final String url;

  static void route(BuildContext context, String url) =>
      Navigator.of(context).pushNamed(routeName, arguments: url);

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
