import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'firebase_options.dart';

Future<void> setup() async {
  await _initFirebase();
  await _initOneSignal();
}

Future<void> _initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final remoteConfig = FirebaseRemoteConfig.instance;

  await remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(seconds: 1),
    ),
  );
  await remoteConfig.setDefaults(const {
    'url': 'https://flutter.dev/',
  });
  await remoteConfig.fetchAndActivate();
}

Future<void> _initOneSignal() async {
  const oneSignalAppId = '81638a6c-f825-4d31-b208-94e6c3bfca21';
  await OneSignal.shared.setAppId(oneSignalAppId);
}
