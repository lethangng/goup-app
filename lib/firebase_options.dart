// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
// import 'firebase_options.dart';
// /// // ...
// await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDaJsHxNg3kQUyOTWDa-xoDPjgjVhb1RHE',
    appId: '1:259638955107:web:78b3685da6c528435d3c56',
    messagingSenderId: '259638955107',
    projectId: 'goup-app',
    authDomain: 'goup-app.firebaseapp.com',
    storageBucket: 'goup-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDcmhD0ITH63BddKU3dxg275b8US-CHlMk',
    appId: '1:259638955107:android:3fe70def42183a4a5d3c56',
    messagingSenderId: '259638955107',
    projectId: 'goup-app',
    storageBucket: 'goup-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD_YQpWuBwA2WXVfyBcL0nqLOw3Ord_Ev8',
    appId: '1:259638955107:ios:deadc91f6e13e1c75d3c56',
    messagingSenderId: '259638955107',
    projectId: 'goup-app',
    storageBucket: 'goup-app.appspot.com',
    iosBundleId: 'com.example.goupApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD_YQpWuBwA2WXVfyBcL0nqLOw3Ord_Ev8',
    appId: '1:259638955107:ios:c15af4c95c68bb075d3c56',
    messagingSenderId: '259638955107',
    projectId: 'goup-app',
    storageBucket: 'goup-app.appspot.com',
    iosBundleId: 'com.example.goupApp.RunnerTests',
  );
}