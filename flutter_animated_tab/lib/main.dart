import 'package:flutter/material.dart';
import 'package:flutter_animated_tab/tab/animated_tab.dart';
import 'package:flutter_animated_tab/tab/tab_model.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
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
  String initialWidget = "Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  initialWidget,
                  style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Bold',
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          AnimatedTab(
            tabModelList: tabModelList,
            getCallback: (index) {
              
              setState(() {
                initialWidget = tabModelList[index].title;
              });
            },
          )
        ],
      ),
    );
  }
}
