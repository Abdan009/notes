import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationServices {
  FirebaseMessaging fm = FirebaseMessaging();

  Future initialise(BuildContext context) async {
    fm.configure(
      onMessage: (message) async {
        print(message);
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  content: ListTile(
                    title: Text(message['notification']['title']),
                    subtitle: Text(message['notification']['body']),
                  ),
                ));
      },
      onLaunch: (message) async {
        print(message);
      },
      onResume: (message) async {
        print("On Resume");
        print(message);
      },
    );
  }
}
