import 'package:assignment06/widgets/productList.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Categories(
            icon: Icons.shopping_bag,
            imgTitle: "Clothes",
            imgDecs: "Sold Out",
            onPressed: () {},
          ),
          Categories(
            icon: Icons.bolt,
            imgTitle: "Electronics",
            imgDecs: "5 left",
            onPressed: () {},
          ),
          Categories(
            icon: Icons.car_rental,
            imgTitle: "Cars",
            imgDecs: "8 left",
            onPressed: () {},
          ),
          Categories(
            icon: Icons.bike_scooter,
            imgTitle: "Bikes",
            imgDecs: "5 left",
            onPressed: () {},
          ),
          Categories(
            icon: Icons.bolt,
            imgTitle: "Gadgets",
            imgDecs: "10 left",
            onPressed: () {},
          ),
          Categories(
            icon: Icons.double_arrow,
            imgTitle: "More",
            imgDecs: "All Products",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProductList()));
            },
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final IconData icon;
  final String imgTitle;
  final String imgDecs;
  final VoidCallback onPressed;

  Categories(
      {required this.icon,
      required this.imgTitle,
      required this.imgDecs,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: onPressed,
        child: Column(
          children: [
            Container(
              width: 100,
              child: ListTile(
                title: Icon(icon),
                subtitle: Container(
                    alignment: Alignment.topCenter, child: Text(imgTitle)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
