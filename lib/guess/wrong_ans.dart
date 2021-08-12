import 'package:flutter/material.dart';
import 'package:geoguessr_hangman/guess/correct_ans.dart';

import 'package:geoguessr_hangman/guess/database.dart';
import 'package:geoguessr_hangman/guess/location.dart';
import 'package:geoguessr_hangman/street_view/street_view.dart';
import 'package:geoguessr_hangman/street_view/street_view_pg.dart';

class WrongAns extends StatelessWidget {
  String canswer = CorrectAns.canswer;
  final List<Location> loc = Database.location;
  double score;

  @override
  Widget build(BuildContext context) {
    score = StreetView.score;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 400,
          margin: EdgeInsets.only(top: 30, left: 20),
          child: Image.network(
              'https://media.giphy.com/media/nGSv7zbCUz9sk9MUv6/giphy.gif'),
        ),
        Container(
          margin: EdgeInsets.only(top: 430, left: 30),
          child: Text(
            'Better Luck Next Time',
            style: TextStyle(
                fontSize: 38,
                color: Colors.red[600],
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 620, left: 30),
          child: Text(
            'Final Score: $score',
            style: TextStyle(
                fontSize: 40, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 520, left: 30),
          child: Text(
            'Correct Answer: $canswer',
            style: TextStyle(
                fontSize: 40,
                color: Colors.green[900],
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 700, left: 250),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StreetViewPg()));
                },
                child: Text('Back to Home')))
      ],
    ));
  }
}
