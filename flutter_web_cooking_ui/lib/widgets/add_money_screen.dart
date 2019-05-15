import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter_ui/navbar/src/navigation_bar.dart';
import 'package:flutter_ui/navbar/src/navigation_bar_item.dart';

class AddMoneyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Add Money',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          backgroundColor: Color(0xff009FE3),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              TitledBottomNavigationBar(
                onTap: (index) {},
                reverse: true,
                items: <TitledNavigationBarItem>[
                  TitledNavigationBarItem(
                      title: 'Demo', icon: CommunityMaterialIcons.access_point),
                  TitledNavigationBarItem(
                      title: 'Text', icon: CommunityMaterialIcons.database)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
