import 'package:flutter/material.dart';
import 'package:grantha/screens/home/Home.dart';
import 'package:grantha/screens/login/Login.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Login());
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
      case '/error':
        return MaterialPageRoute(
            builder: (_) => ErrorView(error_message: "Direct Route"));
      default:
        return MaterialPageRoute(
            builder: (_) => ErrorView(error_message: 'Default Route'));
    }
  }
}

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
