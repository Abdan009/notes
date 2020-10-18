import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:notes/Pages/list_notes_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: NotificationPage());
  }
}

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  String title = "No Title";
  String body = "No Body";
  FirebaseMessaging fm = FirebaseMessaging();
  _NotificationPageState() {
    fm.getToken().then((value) => print("token : $value"));
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
        // setState(() {
        //   title = message['notification']['title'];
        //   body = message['notification']['body'];
        // });
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifikakasi"),
      ),
      body: Center(
        child: Card(
          child: Container(
            child: ListTile(
              title: Text("title"),
              subtitle: Text("body"),
            ),
          ),
        ),
      ),
    );
  }
}
