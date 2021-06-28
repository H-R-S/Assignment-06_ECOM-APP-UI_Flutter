import 'package:assignment06/widgets/notificationDrawer.dart';
import 'package:flutter/material.dart';

class AppBarWidget {
  static getAppBar(String title) {
    return AppBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(50),
        ),
      ),
      centerTitle: true,
      toolbarHeight: 80,
      title: Text(
        title,
        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
      flexibleSpace: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(30.0)),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              Colors.pinkAccent,
              Colors.purpleAccent,
            ],
          ),
        ),
      ),
    );
  }
}
