import 'dart:io';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'setup.dart';
import 'ui/screens/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    WebView.platform = AndroidWebView();
  }

  await setup();

  final remoteConfig = FirebaseRemoteConfig.instance;
  final url = remoteConfig.getString('url');

  runApp(MyApp(url: url));
}
