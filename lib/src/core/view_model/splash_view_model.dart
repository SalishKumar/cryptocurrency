import 'package:cryptocurrency/src/view/login.dart';
import 'package:flutter/material.dart';

class SplashViewModel extends ChangeNotifier {
  NavigateToLogin(BuildContext context) async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushReplacementNamed(context, Login.routeName);
  }
}
