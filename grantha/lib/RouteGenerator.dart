import 'package:flutter/material.dart';
import 'package:grantha/screens/error/error.dart';
import 'package:grantha/screens/home/Home.dart';
import 'package:grantha/screens/login/Login.dart';
import 'package:grantha/screens/resetPassword/ResetPassword.dart';
import 'package:grantha/screens/userAgreement/UserAgreement.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Login());
      case '/login':
        return MaterialPageRoute(builder: (_) => Login());
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
      case '/recoverPassword':
        return MaterialPageRoute(builder: (_) => RecoverPassword());
      case '/userAgreement':
        return MaterialPageRoute(builder: (_) => UserAgreement());
      case '/error':
        return MaterialPageRoute(
            builder: (_) => ErrorView(error_message: "Direct Route"));
      default:
        return MaterialPageRoute(
            builder: (_) => ErrorView(error_message: 'Default Route'));
    }
  }
}
