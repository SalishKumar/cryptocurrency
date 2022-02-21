import 'package:cryptocurrency/src/core/app_constants/image_constants.dart';
import 'package:cryptocurrency/src/core/view_model/login_view_model.dart';
import 'package:cryptocurrency/src/custom_widgets/my_button.dart';
import 'package:cryptocurrency/src/custom_widgets/my_textfield.dart';
import 'package:cryptocurrency/src/view/forgetPassword.dart';
import 'package:cryptocurrency/src/view/signup.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    LoginViewModel loginViewModel =
        Provider.of<LoginViewModel>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          decoration: BoxDecoration(
              border: (defaultTargetPlatform == TargetPlatform.iOS ||
                      defaultTargetPlatform == TargetPlatform.android)
                  ? Border.all(width: 0, style: BorderStyle.none)
                  : Border.all()),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<LoginViewModel>(
                      builder: (context, loginViewModel, child) {
                    return loginViewModel.hintText != "Password"
                        ? const SizedBox()
                        : Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                onPressed: () {
                                  loginViewModel.back();
                                },
                                icon: const Icon(Icons.cancel)));
                  }),
                  Image.asset(
                    ImageConstants.logo,
                    height: 80,
                    width: 80,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Login Up",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Consumer<LoginViewModel>(
                      builder: (context, loginViewModel, child) {
                    return myTextField(
                      controller: loginViewModel.inputCon,
                      hintText: loginViewModel.hintText,
                    );
                  }),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, ForgetPassword.routeName);
                        },
                        child: const Text(
                          "Forgetten password?",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Consumer<LoginViewModel>(
                      builder: (context, loginViewModel, child) {
                    return myButton(
                      onTap: () {
                        loginViewModel.next();
                      },
                      label:
                          loginViewModel.hintText == "Email" ? "Next" : "Login",
                    );
                  }),
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
                            Text("Login with google"),
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
                          Navigator.pushNamed(context, SignUp.routeName);
                        },
                        child: const Text(
                          "Don't have an account? Sign up!",
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
