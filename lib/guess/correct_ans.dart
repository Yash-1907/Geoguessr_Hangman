import 'package:flutter/material.dart';

import 'package:geoguessr_hangman/guess/database.dart';
import 'package:geoguessr_hangman/guess/location.dart';
import 'package:geoguessr_hangman/street_view/street_view.dart';
import 'package:geoguessr_hangman/street_view/street_view_pg.dart';

class CorrectAns extends StatelessWidget {
  static String answer;
  static String canswer;
  final List<Location> loc = Database.location;
  double score;

  @override
  Widget build(BuildContext context) {
    print(StreetViewPg.diff_time);
    if (StreetViewPg.diff_time <= 30)
      StreetView.score = StreetView.score + 200;
    else if ((StreetViewPg.diff_time > 30) && (StreetViewPg.diff_time <= 130))
      StreetView.score =
          StreetView.score + (200 - (StreetViewPg.diff_time - 30));
    else {
      StreetView.score = StreetView.score + 50;
    }
    score = StreetView.score;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30, left: 60),
          child: Image.network(
              'https://media.giphy.com/media/al8ACVSHfvqcl7beKh/giphy.gif'),
        ),
        Container(
          margin: EdgeInsets.only(top: 500, left: 60),
          child: Text(
            'Correct Answer',
            style: TextStyle(
                fontSize: 40,
                color: Colors.green[900],
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 600, left: 85),
          child: Text(
            'Score: $score',
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
                    MaterialPageRoute(builder: (context) => StreetView()));
              },
              child: Text('Next Round')),
        )
      ],
    ));
  }
}
