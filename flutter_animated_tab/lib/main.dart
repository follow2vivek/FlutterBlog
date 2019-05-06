import 'package:flutter/material.dart';
import 'package:flutter_animated_tab/tab/animated_tab.dart';
import 'package:flutter_animated_tab/tab/tab_model.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  final List<TabModel> tabModelList = [
    TabModel(
      title: 'Home',
      selected: true,
      icon: Icon(
        Icons.home,
        color: Colors.white,

      ),
    ),
    TabModel(
      title: 'Search',
      icon: Icon(
        Icons.search,
        color: Colors.white,
      ),
    ),
    TabModel(
      title: 'Cart',
      icon: Icon(
        Icons.shopping_cart,
        color: Colors.white,
      ),
    ),
    TabModel(
      title: 'Gift',
      icon: Icon(
        Icons.card_giftcard,
        color: Colors.white,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          ),
          AnimatedTab(tabModelList: tabModelList,)
        ],
      ),
    );
  }
}
