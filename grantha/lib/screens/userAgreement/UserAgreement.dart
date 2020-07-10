import 'package:flutter/material.dart';

class UserAgreement extends StatefulWidget {
  @override
  _UserAgreementState createState() => _UserAgreementState();
}

class _UserAgreementState extends State<UserAgreement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                "User Agreement",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              child: TextField(
                maxLines: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
