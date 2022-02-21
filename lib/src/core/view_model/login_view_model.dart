import 'package:cryptocurrency/src/view/login.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  String hintText = "Email";
  TextEditingController inputCon = TextEditingController();

  next() {
    print("hello");
    hintText = "Password";
    inputCon.clear();

    notifyListeners();
  }

  back() {
    print("hello");
    hintText = "Email";
    inputCon.clear();
    notifyListeners();
  }
}
