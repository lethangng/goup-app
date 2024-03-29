// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app/app.dart';
import 'services/notification_service.dart';
// import 'firebase_options.dart';
// import 'services/api/firebase_api.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Xet mau trong suot cho thanh status bar
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  await NotificationService.initializeNotification();

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // await FirebaseApi().initNotifications();
  runApp(const App());
}
