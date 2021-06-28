import 'package:assignment06/widgets/appBar.dart';
import 'package:assignment06/widgets/raisedGradientButton.dart';
import 'package:assignment06/widgets/textField.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<SignUp> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                    hint: "First Name",
                    controller: firstNameController,
                    inputType: TextInputType.text,
                    isPassword: false,
                  ),
                  MyTextField(
                    hint: "Last Name",
                    controller: lastNameController,
                    inputType: TextInputType.text,
                    isPassword: false,
                  ),
                  MyTextField(
                    hint: "User Name",
                    controller: userNameController,
                    inputType: TextInputType.text,
                    isPassword: false,
                  ),
                  MyTextField(
                    hint: "Email",
                    controller: emailController,
                    inputType: TextInputType.emailAddress,
                    isPassword: false,
                  ),
                  MyTextField(
                    hint: "Password",
                    controller: passwordController,
                    inputType: TextInputType.text,
                    isPassword: true,
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: RaisedGradientButton(
                        child: Text(
                          "SignUp",
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
