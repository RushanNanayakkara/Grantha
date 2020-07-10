import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  final TextEditingController controller;

  const PasswordInput({Key key, this.controller}) : super(key: key);

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _isVisible = false;

  void _toggleVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      textAlign: TextAlign.left,
      obscureText: _isVisible,
      style: TextStyle(
        color: Colors.white70,
      ),
      cursorColor: Colors.red,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          onPressed: _toggleVisible,
          icon:
              _isVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
          color: _isVisible ? Colors.white70 : Colors.white,
        ),
        labelText: "Password",
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
