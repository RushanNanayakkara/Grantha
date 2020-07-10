import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final String error_message;

  const ErrorView({Key key, this.error_message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error"),
      ),
      body: SafeArea(
        child: Text(error_message),
      ),
    );
  }
}
