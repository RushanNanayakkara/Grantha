import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:grantha/screens/pickInterests/localServices/PickInterestService.dart';

class PopButton extends StatefulWidget {
  final Function() notifyParent;

  const PopButton({Key key, @required this.notifyParent}) : super(key: key);

  @override
  _PopButtonState createState() => _PopButtonState();
}

class _PopButtonState extends State<PopButton> {
  bool _visible;
  Color buttonColor;
  String buttonText;

  _onClick() {
    if (this.mounted) {
      setState(() {
        _visible = false;
      });
    }
    PickInterestService.selectItem(buttonText);
    widget.notifyParent();
    var timer = Timer(Duration(milliseconds: 300), () {
      String item = PickInterestService.getItem();
      buttonColor = PickInterestService.getColor();
      buttonText = item;
      if (item == "") dispose();
      if (this.mounted) {
        setState(() {
          _visible = true;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _visible = true;
    buttonColor = PickInterestService.getColor();
    buttonText = PickInterestService.getItem();
  }

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: ButtonTheme(
        minWidth: 88,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 200),
          opacity: _visible ? 1.0 : 0,
          child: RaisedButton(
            color: buttonColor,
            onPressed: _onClick,
            child: Text(
              buttonText,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
