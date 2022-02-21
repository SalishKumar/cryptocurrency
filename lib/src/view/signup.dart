import 'package:cryptocurrency/src/core/app_constants/image_constants.dart';
import 'package:cryptocurrency/src/core/view_model/login_view_model.dart';
import 'package:cryptocurrency/src/core/view_model/signup_view_model.dart';
import 'package:cryptocurrency/src/custom_widgets/my_button.dart';
import 'package:cryptocurrency/src/custom_widgets/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
// import 'dart:io' show Platform;

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  static const routeName = '/signup';

  @override
  Widget build(BuildContext context) {
    SignupViewModel signupViewModel =
        Provider.of<SignupViewModel>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              border: (defaultTargetPlatform == TargetPlatform.iOS ||
                      defaultTargetPlatform == TargetPlatform.android)
                  ? Border.all(width: 0, style: BorderStyle.none)
                  : Border.all()),
          constraints: const BoxConstraints(maxWidth: 500),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios))),
                  Image.asset(
                    ImageConstants.logo,
                    height: 80,
                    width: 80,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Consumer<LoginViewModel>(
                      builder: (context, loginViewModel, child) {
                    return myTextField(
                      controller: signupViewModel.emailCon,
                      hintText: "Email",
                    );
                  }),
                  const SizedBox(
                    height: 15,
                  ),
                  myTextField(
                    controller: signupViewModel.phoneCon,
                    hintText: "Phone",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  myTextField(
                    controller: signupViewModel.usernameCon,
                    hintText: "Username",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  myTextField(
                    controller: signupViewModel.passwCon,
                    hintText: "Password",
                    obsecureText: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  myButton(
                    onTap: () {},
                    label: "Sign Up",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              ImageConstants.google,
                              height: 30,
                              width: 30,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text("Signup with google"),
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Already have an account? Log in!",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
