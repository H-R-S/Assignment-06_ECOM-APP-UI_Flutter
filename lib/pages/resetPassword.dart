import 'package:assignment06/widgets/appBar.dart';
import 'package:assignment06/widgets/raisedGradientButton.dart';
import 'package:assignment06/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class ResetPasswordPage extends StatefulWidget {
  @override
  _resetPasswordState createState() => _resetPasswordState();
}

class _resetPasswordState extends State<ResetPasswordPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget.getAppBar("ECOM APP UI"),
        body: Container(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  MyTextField(
                    hint: "Email",
                    controller: emailController,
                    inputType: TextInputType.emailAddress,
                    isPassword: false,
                  ),
                  MyTextField(
                    hint: "Old Password",
                    controller: oldPasswordController,
                    inputType: TextInputType.text,
                    isPassword: false,
                  ),
                  MyTextField(
                    hint: "New Password",
                    controller: newPasswordController,
                    inputType: TextInputType.text,
                    isPassword: false,
                  ),
                  MyTextField(
                    hint: "Confirm Passowrd",
                    controller: confirmPasswordController,
                    inputType: TextInputType.text,
                    isPassword: false,
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: RaisedGradientButton(
                        child: Text(
                          "Reset Password",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.pinkAccent,
                            Colors.purpleAccent
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
