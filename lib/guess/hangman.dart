import 'package:flutter/material.dart';
import 'package:geoguessr_hangman/guess/wrong_ans.dart';
import 'package:geoguessr_hangman/street_view/street_view.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_google_street_view/flutter_google_street_view.dart';
import 'package:geoguessr_hangman/guess/correct_ans.dart';
import 'package:geoguessr_hangman/guess/database.dart';
import 'package:geoguessr_hangman/guess/location.dart';
import 'package:geoguessr_hangman/street_view/street_view_pg.dart';

class Hangman extends StatefulWidget {
  String s2;
  var s1;
  final List<Location> loc = Database.location;
  double a, b;
  Hangman() {
    s2 = loc[StreetViewPg.n].country;
    a = loc[StreetViewPg.n].lat;
    b = loc[StreetViewPg.n].lng;
    s1 = new List(s2.length);
  }

  @override
  _HangmanState createState() => _HangmanState();
}

class _HangmanState extends State<Hangman> {
  String s;

  String country = '';
  bool Aclick = false;
  bool Bclick = false;
  bool Cclick = false;
  bool Dclick = false;
  bool Eclick = false;
  bool Fclick = false;
  bool Gclick = false;
  bool Hclick = false;
  bool Iclick = false;
  bool Jclick = false;
  bool Kclick = false;
  bool Lclick = false;
  bool Mclick = false;
  bool Nclick = false;
  bool Oclick = false;
  bool Pclick = false;
  bool Qclick = false;
  bool Rclick = false;
  bool Sclick = false;
  bool Tclick = false;
  bool Uclick = false;
  bool Vclick = false;
  bool Wclick = false;
  bool Xclick = false;
  bool Yclick = false;
  bool Zclick = false;
  int lives;
  //static int life;
  @override
  void initState() {
    _getThingsOnStartup().then((value) {
      lives = StreetView.life;
      s = widget.s2.toUpperCase();

      for (int i = 0; i < s.length; i++) {
        var ch = s[i];
        if (s[i] != ' ')
          widget.s1[i] = '_';
        else
          widget.s1[i] = ' ';
      }

      print(widget.s1.join(" "));
      return onClick();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(
        children: [
          Container(
            height: 300,
            child: Stack(children: [
              FlutterGoogleStreetView(
                streetNamesEnabled: false,
                initPos: LatLng(widget.a, widget.b),
              ),
              Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        padding: EdgeInsets.only(top: 0.5),
                        child: IconButton(
                          tooltip: 'Lives',
                          color: Colors.red,
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          iconSize: 45,
                          icon: Icon(MdiIcons.heart),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 191, left: 3),
                        padding: EdgeInsets.fromLTRB(8.7, 7.9, 0, 0.8),
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 38,
                          width: 38,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                StreetView.life.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'PatrickHand',
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ]),
          ),
          Container(
            margin: EdgeInsets.only(left: 13, right: 10, top: 20),
            child: Text(
              country,
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          //Text(life.toString()),
          Container(
            margin: EdgeInsets.only(top: 80, bottom: 10),
            height: 300,
            //padding: EdgeInsets.fromLTRB(10.0, 2.0, 8.0, 10.0),
            child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                //columnWidths: {1: FlexColumnWidth(10)},
                children: [
                  TableRow(children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Aclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'A')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'A') {
                                  widget.s1[i] = 'A';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Aclick = true;
                            return onClick();
                          },
                          child: Text(
                            "A",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Aclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Bclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'B')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'B') {
                                  widget.s1[i] = 'B';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Bclick = true;
                            return onClick();
                          },
                          child: Text(
                            "B",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Bclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Cclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'C')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'C') {
                                  widget.s1[i] = 'C';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Cclick = true;
                            return onClick();
                          },
                          child: Text(
                            "C",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Cclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Dclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'D')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'D') {
                                  widget.s1[i] = 'D';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Dclick = true;
                            return onClick();
                          },
                          child: Text(
                            "D",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Dclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Eclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'E')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'E') {
                                  widget.s1[i] = 'E';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Eclick = true;
                            return onClick();
                          },
                          child: Text(
                            "E",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Eclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Fclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'F')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'F') {
                                  widget.s1[i] = 'F';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Fclick = true;
                            return onClick();
                          },
                          child: Text(
                            "F",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Fclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Gclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'G')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'G') {
                                  widget.s1[i] = 'G';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Gclick = true;
                            return onClick();
                          },
                          child: Text(
                            "G",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Gclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Hclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'H')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'H') {
                                  widget.s1[i] = 'H';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Hclick = true;
                            return onClick();
                          },
                          child: Text(
                            "H",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Hclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Iclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'I')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'I') {
                                  widget.s1[i] = 'I';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Iclick = true;
                            return onClick();
                          },
                          child: Text(
                            "I",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Iclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Jclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'J')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'J') {
                                  widget.s1[i] = 'J';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Jclick = true;
                            return onClick();
                          },
                          child: Text(
                            "J",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Jclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Kclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'K')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'K') {
                                  widget.s1[i] = 'K';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Kclick = true;
                            return onClick();
                          },
                          child: Text(
                            "K",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Kclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Lclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'L')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'L') {
                                  widget.s1[i] = 'L';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Lclick = true;
                            return onClick();
                          },
                          child: Text(
                            "L",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Lclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Mclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'M')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'M') {
                                  widget.s1[i] = 'M';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Mclick = true;
                            return onClick();
                          },
                          child: Text(
                            "M",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Mclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Nclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'N')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'N') {
                                  widget.s1[i] = 'N';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Nclick = true;
                            return onClick();
                          },
                          child: Text(
                            "N",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Nclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Oclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'O')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'O') {
                                  widget.s1[i] = 'O';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Oclick = true;
                            return onClick();
                          },
                          child: Text(
                            "O",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Oclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Pclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'P')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'P') {
                                  widget.s1[i] = 'P';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Pclick = true;
                            return onClick();
                          },
                          child: Text(
                            "P",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Pclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Qclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'Q')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'Q') {
                                  widget.s1[i] = 'Q';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Qclick = true;
                            return onClick();
                          },
                          child: Text(
                            "Q",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Qclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Rclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'R')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'R') {
                                  widget.s1[i] = 'R';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Rclick = true;
                            return onClick();
                          },
                          child: Text(
                            "R",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Rclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Sclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'S')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'S') {
                                  widget.s1[i] = 'S';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Sclick = true;
                            return onClick();
                          },
                          child: Text(
                            "S",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Sclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Tclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'T')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'T') {
                                  widget.s1[i] = 'T';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Tclick = true;
                            return onClick();
                          },
                          child: Text(
                            "T",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Tclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Uclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'U')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'U') {
                                  widget.s1[i] = 'U';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Uclick = true;
                            return onClick();
                          },
                          child: Text(
                            "U",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Uclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Vclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'V')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'V') {
                                  widget.s1[i] = 'V';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Vclick = true;
                            return onClick();
                          },
                          child: Text(
                            "V",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Vclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Wclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'W')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'W') {
                                  widget.s1[i] = 'W';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Wclick = true;
                            return onClick();
                          },
                          child: Text(
                            "W",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Wclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Xclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'X')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'X') {
                                  widget.s1[i] = 'X';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Xclick = true;
                            return onClick();
                          },
                          child: Text(
                            "X",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Xclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Yclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'Y')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'Y') {
                                  widget.s1[i] = 'Y';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Yclick = true;
                            return onClick();
                          },
                          child: Text(
                            "Y",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Yclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: () {
                            s = widget.s2.toUpperCase();

                            if (Zclick == false) {
                              for (int i = 0; i < s.length; i++) {
                                var ch = widget.s1[i];
                                var ch2 = s[i];
                                if ((ch == '_' && ch2 != 'Z')) {
                                  widget.s1[i] = '_';
                                } else if (ch2 == 'Z') {
                                  widget.s1[i] = 'Z';
                                }
                              }
                              if (country == widget.s1.join(" ")) {
                                lives = lives - 1;
                              }
                            }

                            print(widget.s1.join(" "));
                            Zclick = true;
                            return onClick();
                          },
                          child: Text(
                            "Z",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Zclick ? Colors.grey : Colors.blue,
                        ),
                      ),
                    ),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                    TableCell(child: Text('')),
                  ]),
                ]),
          ),
        ],
      ))),
    );
  }

  void onClick() {
    setState(() {
      country = widget.s1.join(" ");
      String c = widget.s1.join("");
      StreetView.life = lives;
      print(country);
      print(s);
      if (c == s) {
        print('Win');
        StreetViewPg.diff_time =
            DateTime.now().difference(StreetViewPg.start_time).inSeconds;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CorrectAns()));
      }
      if (StreetView.life == 0) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => WrongAns()));
        print('YOU LOSE');
      }
    });
  }

  Future _getThingsOnStartup() async {
    await Future.delayed(Duration(seconds: 0));
  }
}
