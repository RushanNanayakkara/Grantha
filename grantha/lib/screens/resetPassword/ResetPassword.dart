import 'package:edge_alert/edge_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grantha/widgets/PasswordInput.dart';
import 'package:grantha/widgets/TextInput.dart';

class RecoverPassword extends StatefulWidget {
  @override
  _RecoverPasswordState createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  final resetCodeController = TextEditingController();
  final passwordController = TextEditingController();

  void _resetPasswordOnClick() {
    String resetCode = resetCodeController.text;
    String password = passwordController.text;
    String successMsg = "Password reset. Please use new password to login";
    String errorMsg = "Error changing password";
    bool success = true;
    if (success) {
      _showSuccessAlert(successMsg);
      Navigator.pushNamed(context, '/login');
    } else {
      _showFailAlert(errorMsg);
    }
  }

  void _resendCodeOnClick() {
    bool success = true;
    String successMsg = "Conformation code sent to email";
    String errorMsg = "Error sending email";
    if (success) {
      _showSuccessAlert(successMsg);
    } else {
      _showFailAlert(errorMsg);
    }
  }

  void _showSuccessAlert(msg) {
    EdgeAlert.show(
      context,
      title: 'Success',
      description: msg,
      gravity: EdgeAlert.TOP,
      backgroundColor: Colors.green,
      duration: 1,
      icon: Icons.done,
    );
  }

  void _showFailAlert(String msg) {
    EdgeAlert.show(
      context,
      title: 'Failed',
      description: msg,
      gravity: EdgeAlert.TOP,
      backgroundColor: Colors.red,
      duration: 2,
      icon: Icons.done,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // INPUT: RESET CODE
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 18),
              child: Center(
                child: Text(
                  "Reset Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 9 / 10,
              child: TextInput(
                controller: resetCodeController,
                labelText: "Enter reset code",
                prefixIcon: Icons.vpn_key,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // INPUT: PASSWORD
            Container(
              width: MediaQuery.of(context).size.width * 9 / 10,
              child: PasswordInput(
                controller: passwordController,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ButtonTheme(
              height: 45,
              minWidth: MediaQuery.of(context).size.width * 4 / 5,
              child: RaisedButton(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0)),
                onPressed: _resetPasswordOnClick,
                child: const Text('Reset Password',
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ButtonTheme(
              height: 45,
              minWidth: MediaQuery.of(context).size.width * 4 / 5,
              child: RaisedButton(
                color: Colors.white70,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0)),
                onPressed: _resendCodeOnClick,
                child: const Text('Resend Code',
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
