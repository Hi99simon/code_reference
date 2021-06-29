import 'package:firebase_messaging/firebase_messaging.dart';

void requestNotification() async {
  await FirebaseMessaging.instance.requestPermission();
}
