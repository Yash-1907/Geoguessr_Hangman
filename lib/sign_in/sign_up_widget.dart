import 'package:flutter/material.dart';

import 'package:geoguessr_hangman/sign_in/google_sign_in_button.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Stack(
        fit: StackFit.expand,
        children: [
          buildSignUp(),
        ],
      );

  Widget buildSignUp() => MaterialApp(
          home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 200, left: 20, right: 20),
                  child: Text(
                    'Geoguessr+Hangman',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Container(
                  margin: EdgeInsets.only(bottom: 150),
                  child: GoogleSignInButton()),
              SizedBox(height: 12),
              // Container(
              //   child: Text(
              //     'Login to continue',
              //     style: TextStyle(fontSize: 16),
              //   ),
              // ),
              Spacer(),
            ],
          ),
        ]),
      ));
}
