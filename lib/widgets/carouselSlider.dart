import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWithDotsPage extends StatefulWidget {
  List<String> imgList = [
    "assets/images/note20ultra.jpeg",
    "assets/images/macBookAir.jpg",
    "assets/images/macBookPro.jpg",
    "assets/images/gamingPc.jpg",
    "assets/images/gamingPc2.jpeg",
    "assets/images/gamingKeyboard.jpg",
    "assets/images/rangeRover.jpg",
    "assets/images/rollsRoyce.jpg",
  ];

  @override
  _CarouselWithDotsPageState createState() => _CarouselWithDotsPageState();
}

class _CarouselWithDotsPageState extends State<CarouselWithDotsPage> {
  int _current = 0;

  var imgTitle = [
    "Samsung Galaxy Note 20",
    "MacBook Air 2021",
    "MacBook Pro 2021",
    "Gaming PC",
    "Gaming Pc",
    "Gaming KeyBoard",
    "Range Rover",
    "Rolls Royce"
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map(
          (item) => Container(
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
              child: Stack(
                children: [
                  Image.network(
                    item,
                    fit: BoxFit.contain,
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
        .toList();

    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.map((url) {
            int index = widget.imgList.indexOf(url);
            return Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 3,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
