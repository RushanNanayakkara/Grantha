import 'package:flutter/material.dart';

import 'localWidgets/TitleAndBodySection.dart';
import 'localWidgets/UserAgreementBody.dart';

class UserAgreement extends StatefulWidget {
  @override
  _UserAgreementState createState() => _UserAgreementState();
}

class _UserAgreementState extends State<UserAgreement> {
  _quitOnClicked() {
    Navigator.pushNamedAndRemoveUntil(context, '/login', (r) => false);
  }

  _agreeOnClicked() {
    Navigator.pushNamed(context, '/emailConformation');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "User Agreement",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              height: MediaQuery.of(context).size.height * 7 / 10,
              width: MediaQuery.of(context).size.width * 9 / 10,
//                color: Colors.white,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
              ),
              child: UserAgreementBody(),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 9 / 10,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "By clicking on agree you agree to the terms and conditions mentioned above",
                    style: TextStyle(color: Colors.white60),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ButtonTheme(
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width * 4 / 10,
                  child: RaisedButton(
                    color: Colors.white70,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0)),
                    onPressed: _quitOnClicked,
                    child: const Text('Quit',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ),
                ButtonTheme(
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width * 4 / 10,
                  child: RaisedButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0)),
                    onPressed: _agreeOnClicked,
                    child: const Text('Agree',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
