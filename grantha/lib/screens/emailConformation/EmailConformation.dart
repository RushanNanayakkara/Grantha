import 'package:edge_alert/edge_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:grantha/widgets/TextInput.dart';

class EmailConformation extends StatefulWidget {
  @override
  _EmailConformationState createState() => _EmailConformationState();
}

class _EmailConformationState extends State<EmailConformation> {
  TextEditingController activationCodeInputController;

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
      icon: Icons.error,
    );
  }

  void _activateOnClicked() {
    bool isSuccess = true;
    if (isSuccess) {
      String successMessage = "Account activated successfully!";
      _showSuccessAlert(successMessage);
      Navigator.pushNamedAndRemoveUntil(
          context, "/pickInterests", ModalRoute.withName('/login'));
    } else {
      String failMessage = "ActivationFailed";
      _showFailAlert(failMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Center(
                  child: Text(
                    "Enter Activation Code",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 10 * 8,
                  child: TextInput(
                    prefixIcon: Icons.vpn_key,
                    controller: activationCodeInputController,
                    labelText: "Activation Key",
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ButtonTheme(
                  child: ButtonTheme(
                    height: 45,
                    minWidth: MediaQuery.of(context).size.width * 4 / 10,
                    child: RaisedButton(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0)),
                      onPressed: _activateOnClicked,
                      child: const Text(
                        'Activate',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
