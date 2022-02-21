import 'package:cryptocurrency/src/core/app_provider.dart';
import 'package:cryptocurrency/src/core/locator.dart';
import 'package:cryptocurrency/src/view/app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppProvider(child: App());
  }
}
