import 'package:cryptocurrency/src/core/app_constants/image_constants.dart';
import 'package:cryptocurrency/src/core/view_model/forget_password_view_model.dart';
import 'package:cryptocurrency/src/custom_widgets/my_button.dart';
import 'package:cryptocurrency/src/custom_widgets/my_textfield.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);
  static const routeName = '/forgetpassword';

  @override
  Widget build(BuildContext context) {
    ForgetPasswordViewModel forgetPasswordViewModel =
        Provider.of<ForgetPasswordViewModel>(context, listen: false);
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
                    "Forget Password",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Consumer<ForgetPasswordViewModel>(
                      builder: (context, forgetPasswordViewModel, child) {
                    return myTextField(
                      controller: forgetPasswordViewModel.inputCon,
                      hintText: "Email",
                    );
                  }),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  myButton(
                    onTap: () {
                      forgetPasswordViewModel.reset();
                    },
                    label: "Reset",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
