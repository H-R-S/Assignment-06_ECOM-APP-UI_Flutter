import 'package:assignment06/home.dart';
import 'package:assignment06/pages/emailConfirmation.dart';
import 'package:assignment06/pages/signUp.dart';
import 'package:assignment06/widgets/appBar.dart';
import 'package:assignment06/widgets/raisedGradientButton.dart';
import 'package:assignment06/widgets/socialItem.dart';
import 'package:assignment06/widgets/textField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

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
                Container(
                  child: Image.asset(
                    'assets/logos/mainLogo.png',
                    fit: BoxFit.contain,
                  ),
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
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      gradient: LinearGradient(
                        colors: <Color>[Colors.pinkAccent, Colors.purpleAccent],
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                    )),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EmailVerificationPage()));
                  },
                  textColor: Colors.purple,
                  child: Text('Forgot Password'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child:
                      Text("----------------- OR Login With -----------------"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialItem(
                      image: 'assets/logos/googleLogo.png',
                    ),
                    SocialItem(
                      image: 'assets/logos/githubLogo.png',
                    ),
                    SocialItem(
                      image: 'assets/logos/linkedinLogo.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account yet? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(bottom: 100))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
