import 'package:assignment06/pages/resetPassword.dart';
import 'package:assignment06/widgets/appBar.dart';
import 'package:assignment06/widgets/raisedGradientButton.dart';
import 'package:assignment06/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class EmailVerificationPage extends StatefulWidget {
  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<EmailVerificationPage> {
  TextEditingController verificationCodeController = TextEditingController();

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
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Check Email For Verification",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.pinkAccent),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Enter Verification Code",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.purpleAccent),
                    ),
                  ),
                  MyTextField(
                    hint: "Verification Code",
                    controller: verificationCodeController,
                    inputType: TextInputType.number,
                    isPassword: false,
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: RaisedGradientButton(
                        child: Text(
                          "Verify",
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
                                  builder: (context) => ResetPasswordPage()));
                        },
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
