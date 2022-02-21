import 'package:cryptocurrency/src/core/routes.dart';
import 'package:cryptocurrency/src/view/splash_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: SplashScreen(),
      onGenerateRoute: generateRoute,
      debugShowCheckedModeBanner: false,
      // initialRoute: SplashScreen.routeName,
    );
  }
}
