import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:grantha/screens/pickInterests/localServices/PickInterestService.dart';
import 'package:grantha/screens/pickInterests/localWidgets/PopButton.dart';
import 'package:grantha/widgets/Tag.dart';

class PickInterests extends StatefulWidget {
  @override
  _PickInterestsState createState() => _PickInterestsState();
}

class _PickInterestsState extends State<PickInterests> {
  List<String> selected;
  List<PopButton> popButtons;

  _nextOnClick() {
    selected.forEach((element) {
      print(element);
    });
    Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
  }

  _skipOnClick() {
    Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
  }

  @override
  void initState() {
    super.initState();
    PickInterestService.reset();
    selected = PickInterestService.selectedItems;
    popButtons = [];
    for (int i = 0; i < 20; i++) {
      popButtons.add(PopButton(
        notifyParent: updateTags,
      ));
    }
  }

  updateTags() {
    if (this.mounted) {
      setState(() {
        selected = PickInterestService.selectedItems;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text(
                    "Select your interests",
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.normal,
                        fontSize: 30),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 10),
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  child: Text(
                    "Selected",
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  height: 100,
                  child: SingleChildScrollView(
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 5,
                      runSpacing: 10,
                      children: selected != null
                          ? selected
                              .map((e) => Tag(
                                    tagName: e,
                                    color: Colors.white30,
                                  ))
                              .toList()
                              .cast<Widget>()
                          : [],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 4 / 10,
                  child: SingleChildScrollView(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      direction: Axis.horizontal,
                      spacing: 5,
                      runSpacing: 10,
                      children: popButtons != null ? popButtons : [],
                    ),
                  ),
                ),
              ),
              ButtonTheme(
                child: ButtonTheme(
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width * 5 / 10,
                  child: RaisedButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0)),
                    onPressed: _nextOnClick,
                    child: const Text(
                      'Next',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
