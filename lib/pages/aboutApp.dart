import 'package:flutter/material.dart';

class AboutApp extends StatefulWidget {
  @override
  AboutAppState createState() => AboutAppState();
}

class AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Container(
              child: Text(""),
            )
          ],
        ),
      ),
    )));
  }
}
