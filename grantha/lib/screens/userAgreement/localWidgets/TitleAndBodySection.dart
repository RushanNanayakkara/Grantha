import 'package:flutter/material.dart';

class TitleAndBodySection extends StatefulWidget {
  final String title;
  final String body;

  const TitleAndBodySection({Key key, this.title, this.body}) : super(key: key);

  @override
  _TitleAndBodySectionState createState() => _TitleAndBodySectionState();
}

class _TitleAndBodySectionState extends State<TitleAndBodySection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Container(
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 2, 10, 0),
                  child: Container(
                    child: Text(
                      widget.body,
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
