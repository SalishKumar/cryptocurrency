import 'package:cryptocurrency/src/core/view_model/forget_password_view_model.dart';
import 'package:cryptocurrency/src/core/view_model/login_view_model.dart';
import 'package:cryptocurrency/src/core/view_model/signup_view_model.dart';
import 'package:cryptocurrency/src/core/view_model/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppProvider extends StatelessWidget {
  final Widget child;

  const AppProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SplashViewModel()),
        ChangeNotifierProvider(create: (context) => LoginViewModel()),
        ChangeNotifierProvider(create: (context) => ForgetPasswordViewModel()),
        ChangeNotifierProvider(create: (context) => SignupViewModel()),
      ],
      child: child,
    );
  }
}
