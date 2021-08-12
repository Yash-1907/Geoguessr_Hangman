import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_google_street_view/flutter_google_street_view.dart';
import 'package:geoguessr_hangman/guess/correct_ans.dart';

import 'package:geoguessr_hangman/guess/database.dart';
import 'package:geoguessr_hangman/guess/hangman.dart';

import 'package:geoguessr_hangman/guess/location.dart';
import 'package:geoguessr_hangman/street_view/street_view_pg.dart';

class StreetView extends StatefulWidget {
  static double score;
  static int life;

  @override
  _StreetViewState createState() => _StreetViewState();
}

class _StreetViewState extends State<StreetView> {
  final List<Location> loc = Database.location;

  @override
  Widget build(BuildContext context) {
    int l = (loc.length) - 1;
    print(l.toString());
    StreetViewPg.n = Random().nextInt(l);
    double a = loc[StreetViewPg.n].lat;
    double b = loc[StreetViewPg.n].lng;
    CorrectAns.canswer = loc[StreetViewPg.n].country;
    print(loc[StreetViewPg.n].country);
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            FlutterGoogleStreetView(
              streetNamesEnabled: false,
              initPos: LatLng(a, b),
            ),
            Container(
              margin: EdgeInsets.only(top: 700, left: 250),
              child: Row(children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green[300]),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Hangman()));
                    },
                    child: Text('        Guess        '))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
