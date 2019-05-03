import 'package:amazon_clone/widget/feature.dart';
import 'package:amazon_clone/widget/header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Header(),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 70),
              child: Text(
                'Featured today',
                style: TextStyle(
                  color: Color(0xff1f1f1f),
                  fontFamily: 'Medium',
                  fontSize: 16,
                ),
              ),
            ),
            Feature()
          ],
        ),
      ),
    );
  }
}
