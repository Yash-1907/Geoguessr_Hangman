import 'package:flutter/material.dart';
import 'package:geoguessr_hangman/guess/hangman.dart';

import 'package:geoguessr_hangman/sign_in/logged_in.dart';
import 'package:geoguessr_hangman/street_view/instruction.dart';
import 'package:geoguessr_hangman/street_view/street_view.dart';
import 'package:provider/provider.dart';
import 'package:geoguessr_hangman/provider/google_sign_in.dart';

class StreetViewPg extends StatelessWidget {
  static int n;
  static var start_time;
  static var diff_time;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Geoguessr + Hangman'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Geoguessr                          +             Hangman',
                textScaleFactor: 2.5,
              ),
            ),
            ListTile(
              title: const Text(
                'Profile',
                textScaleFactor: 1.5,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoggedIn()),
                );
              },
            ),
            ListTile(
              title: const Text('Logout', textScaleFactor: 1.5),
              onTap: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
              },
            ),
          ],
        ),
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Container(
            width: 200,
            height: 40,
            child: RaisedButton(
              color: Colors.lightBlue,
              child: Text("PLAY"),
              onPressed: () {
                StreetView.life = 5;
                StreetView.score = 0.0;
                start_time = DateTime.now();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StreetView()),
                );
              },
            ),
          ),
        ),
        Center(
          child: Container(
            width: 200,
            height: 40,
            margin: EdgeInsets.only(top: 150),
            child: RaisedButton(
              color: Colors.lightBlue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Instruction()),
                );
              },
              child: Text('INSTRUCTIONS'),
            ),
          ),
        )
      ]),
    ));
  }
}
