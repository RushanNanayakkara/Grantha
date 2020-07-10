import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final String labelText;
  final IconData prefixIcon;
  final TextEditingController controller;

  const TextInput({Key key, this.labelText, this.prefixIcon, this.controller})
      : super(key: key);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.white70,
      ),
      cursorColor: Colors.red,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
        labelText: widget.labelText,
        labelStyle: TextStyle(
          color: Colors.white70,
          fontSize: 15,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blue, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 2, color: Colors.blue),
        ),
        hintStyle: TextStyle(
          fontSize: 15.0,
          color: Colors.white70,
        ),
      ),
    );
  }
}
