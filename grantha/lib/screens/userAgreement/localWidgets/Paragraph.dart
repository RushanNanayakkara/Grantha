import 'package:flutter/material.dart';

class Paragraph extends StatefulWidget {
  final String body;

  const Paragraph({Key key, this.body}) : super(key: key);

  @override
  _ParagraphState createState() => _ParagraphState();
}

class _ParagraphState extends State<Paragraph> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 3, 10, 0),
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
        ),
      ),
    );
  }
}
