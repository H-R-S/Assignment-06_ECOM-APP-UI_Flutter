import 'package:flutter/material.dart';

class DrawerWidget {
  static getDrawer() {
    return ClipRRect(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(30.0)),
        clipBehavior: Clip.hardEdge,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Colors.pinkAccent,
                      Colors.purpleAccent,
                    ],
                  ),
                ),
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/myImage.jpg"),
                    ),
                    title: Text(
                      'User',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "369haris@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text('Search'),
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Cart'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ));
  }
}
