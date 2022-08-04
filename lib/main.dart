import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'firebase_options.dart';
import 'screens/my_app/view/my_app.dart';

final remoteConfig = FirebaseRemoteConfig.instance;
const oneSignalAppId = '81638a6c-f825-4d31-b208-94e6c3bfca21';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    WebView.platform = AndroidWebView();
  }

  await initFirebase();
  await initOneSignal();
  runApp(
    const MyApp(
      title: 'My Flutter App',
      url: 'https://flutter.dev/',
    ),
  );
}

Future<void> initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(seconds: 1),
    ),
  );
  await remoteConfig.setDefaults(const {
    'title': 'My Flutter App',
    'color': '{"color":"0xFF2196F3"}',
  });
  await remoteConfig.fetchAndActivate();
}

Future<void> initOneSignal() async {
  await OneSignal.shared.setAppId(oneSignalAppId);
}
