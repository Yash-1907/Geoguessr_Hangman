import 'package:flutter/material.dart';
import 'package:geoguessr_hangman/sign_in/sign_in_pg.dart';
import 'package:geoguessr_hangman/street_view/street_view_pg.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Geoguessr_Hangman',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInPg(),
    );
  }
}
