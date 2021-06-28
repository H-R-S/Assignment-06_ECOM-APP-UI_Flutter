import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  var productList = [
    {
      "name": "Note 20 Ultra",
      "image": "images/note20ultra.jpeg",
      "rating": "4.5",
    },
    {
      "name": "iPhone 12 Pro Max",
      "image": "images/iPhone12ProMax.jpg",
      "rating": "5",
    },
    {
      "name": "Proton X50",
      "image": "images/protonX50.jpg",
      "rating": "5",
    },
    {
      "name": "Samsung Galaxy S21",
      "image": "images/S21ultra.jpg",
      "rating": "5",
    },
    {
      "name": "Rolls Royce",
      "image": "images/rollsRoyce.jpg",
      "rating": "5",
    },
    {
      "name": "Oppo A15",
      "image": "images/oppoA15.jpg",
      "rating": "5",
    },
    {
      "name": "MacBook Air 21",
      "image": "images/macBookAir.jpg",
      "rating": "4.5",
    },
    {
      "name": "Audi Next Generation",
      "image": "images/audinextGen.jpg",
      "rating": "5",
    },
    {
      "name": "Samsung Z-Flip",
      "image": "images/samsungZFlip.jpg",
      "rating": "5",
    },
    {
      "name": "BMW Next Vision",
      "image": "images/bmwNextVis.jpg",
      "rating": "5",
    },
    {
      "name": "Gaming PC",
      "image": "images/gamingPc.jpg",
      "rating": "5",
    },
    {
      "name": "One Plus 8",
      "image": "images/oneplus8.jpg",
      "rating": "4.5",
    },
    {
      "name": "James Bond 007 Car",
      "image": "images/jamesBond007.jpg",
      "rating": "5",
    },
    {
      "name": "Gaming KeyBoard",
      "image": "images/gamingKeyboard.jpg",
      "rating": "4",
    },
    {
      "name": "BMW Super Bike",
      "image": "images/bmwBike.jpg",
      "rating": "5",
    },
    {
      "name": "Gaming PC",
      "image": "images/gamingPC2.jpeg",
      "rating": "5",
    },
    {
      "name": "MacBook Pro 21",
      "image": "images/macBookPro.jpg",
      "rating": "4.5",
    },
    {
      "name": "Hummer Electric SUV",
      "image": "images/hummerSUV.jpg",
      "rating": "5",
    },
    {
      "name": "Mercedes Jeep",
      "image": "images/mercedesJeep.jpg",
      "rating": "5",
    },
    {
      "name": "Tesla Cyber Truck",
      "image": "images/teslaCyberTruck.jpg",
      "rating": "5",
    },
    {
      "name": "Range Rover",
      "image": "images/rangeRover.jpg",
      "rating": "5",
    },
    {
      "name": "Harley Davidson",
      "image": "images/harleyDavidson.jpg",
      "rating": "5",
    },
    {
      "name": "Petrol Nissan",
      "image": "images/nissanPetrol.jpg",
      "rating": "5",
    },
    {
      "name": "Huawei Mate 20 Pro",
      "image": "images/huawei.jpg",
      "rating": "5",
    },
    {
      "name": "Honda CIVIC",
      "image": "images/hondaCivic.jpg",
      "rating": "5",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Product(
          productName: productList[index]["name"],
          productImage: productList[index]["image"],
          productRating: productList[index]["rating"],
        );
      },
    );
  }
}

class Product extends StatelessWidget {
  final productName;
  final productImage;
  final productRating;

  Product({
    this.productName,
    this.productImage,
    this.productRating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  title: Text(
                    productName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              child: Image.asset(
                productImage,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
