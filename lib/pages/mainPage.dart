import 'package:assignment06/widgets/carouselSlider.dart';
import 'package:assignment06/widgets/categoriesList.dart';
import 'package:assignment06/widgets/productList.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Items",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductList()));
                    },
                    child: Text(
                      "More Items",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.pinkAccent),
                    ))
              ],
            ),
          ),
          CarouselWithDotsPage(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              "More Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          CategoriesList(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              "Popular Items",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          ProductList(),
        ],
      ),
    );
  }
}
