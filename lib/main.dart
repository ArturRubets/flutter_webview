// ignore_for_file: unused_local_variable, strict_raw_type
// ignore_for_file: avoid_types_on_closure_parameters, avoid_print
import 'dart:io';

import 'package:appsflyer_sdk/appsflyer_sdk.dart';
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

  Map deepLinkData;
  Map gcd;

  final appsflyerSdk = initAppsFlyer()
    ..onAppOpenAttribution((Map res) {
      print('onAppOpenAttribution res: $res');
      deepLinkData = res;
    })
    ..onInstallConversionData((Map res) {
      print('onInstallConversionData res: $res');
      gcd = res;
    })
    ..onDeepLinking((DeepLinkResult dp) {
      switch (dp.status) {
        case Status.FOUND:
          print(dp.deepLink?.toString());
          print('deep link value: ${dp.deepLink?.deepLinkValue}');
          break;
        case Status.NOT_FOUND:
          print('deep link not found');
          break;
        case Status.ERROR:
          print('deep link error: ${dp.error}');
          break;
        case Status.PARSE_ERROR:
          print('deep link status parsing error');
          break;
      }
      print('onDeepLinking res: $dp');
      deepLinkData = dp.toJson();
    });

  final a = await appsflyerSdk.initSdk(
    registerConversionDataCallback: true,
    registerOnAppOpenAttributionCallback: true,
    registerOnDeepLinkingCallback: true,
  );

  runApp(MyApp(url: url));
}
