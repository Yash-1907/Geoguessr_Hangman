import 'package:flutter/material.dart';
import 'package:geoguessr_hangman/street_view/street_view_pg.dart';

class Instruction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('INSTRUCTIONS'),
            ),
            body: Column(children: [
              Center(
                  child: Container(
                margin: EdgeInsets.only(top: 50, left: 30, right: 30),
                child: Text(
                  'Welcome to Geoguessr + Hangman...Playing this game is very easy and fun, as soon as you press "PLAY" you land on a random place from around the globe. You can look around, move in different directions to find clues. Then on pressing the "Guess" button you can start guessing the Country in HANGMAN style. You have only 5 lives(shown at top left) so play wisely. Always remember the time taken to guess the country determines the score for that round. HAPPY GEOGUESSING.... ',
                  style: TextStyle(fontSize: 25),
                ),
              )),
              Container(
                  margin: EdgeInsets.only(top: 100, left: 250),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StreetViewPg()));
                      },
                      child: Text('Back to Home')))
            ])));
  }
}
