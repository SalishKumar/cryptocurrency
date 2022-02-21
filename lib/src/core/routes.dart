import 'dart:convert';

import 'package:cryptocurrency/src/view/forgetPassword.dart';
import 'package:cryptocurrency/src/view/login.dart';
import 'package:cryptocurrency/src/view/signup.dart';
import 'package:cryptocurrency/src/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case Login.routeName:
      return MaterialPageRoute(builder: (_) => const Login());
    case ForgetPassword.routeName:
      return MaterialPageRoute(builder: (_) => const ForgetPassword());
    case SignUp.routeName:
      return MaterialPageRoute(builder: (_) => const SignUp());
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ));
  }
}
