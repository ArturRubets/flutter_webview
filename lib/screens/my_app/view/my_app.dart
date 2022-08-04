import 'package:flutter/material.dart';

import '../widgets/web_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.title,
    required this.url,
  });

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: WebViewWidget(url: url),
        ),
      ),
    );
  }
}
