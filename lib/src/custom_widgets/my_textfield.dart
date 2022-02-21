import 'package:flutter/material.dart';

class myTextField extends StatelessWidget {
  myTextField(
      {Key? key,
      required this.hintText,
      required this.controller,
      this.obsecureText = false})
      : super(key: key);
  String hintText;
  TextEditingController controller;
  bool obsecureText = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: this.obsecureText,
      decoration:
          InputDecoration(hintText: hintText, border: OutlineInputBorder()),
    );
  }
}
