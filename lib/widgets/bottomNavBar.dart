import 'package:flutter/material.dart';

class bottomNavBarWidget extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;

  const bottomNavBarWidget({
    required this.index,
    required this.onChangedTab,
  });

  @override
  _TabBarMaterialWidgetState createState() => _TabBarMaterialWidgetState();
}

class _TabBarMaterialWidgetState extends State<bottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    final placeholder = Opacity(
      opacity: 0,
      child: IconButton(icon: Icon(Icons.no_cell), onPressed: null),
    );

    return ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildTabItem(
                index: 0,
                icon: Icon(Icons.home),
              ),
              buildTabItem(
                index: 1,
                icon: Icon(Icons.favorite),
              ),
              placeholder,
              buildTabItem(
                index: 2,
                icon: Icon(Icons.shopping_cart_outlined),
              ),
              buildTabItem(
                index: 3,
                icon: Icon(Icons.account_circle),
              ),
            ],
          ),
        ));
  }

  Widget buildTabItem({
    required int index,
    required Icon icon,
  }) {
    final isSelected = index == widget.index;

    return IconTheme(
      data: IconThemeData(
        color: isSelected ? Colors.pinkAccent : Colors.black,
      ),
      child: IconButton(
        icon: icon,
        onPressed: () => widget.onChangedTab(index),
      ),
    );
  }
}
