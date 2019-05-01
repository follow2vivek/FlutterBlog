import 'package:flutter/material.dart';
import 'package:flutter_uplab_login_ui/util/color.dart';
import 'package:flutter_uplab_login_ui/widget/header_logo.dart';
import 'package:flutter_uplab_login_ui/widget/login.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Stack(
              fit: StackFit.loose,
              children: <Widget>[
                Container(
                  height: 250,
                  child: HeaderLogo(),
                ),
                Login()
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                width: 130,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      colorButton1,
                      colorButton2,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: colorButton1.withOpacity(0.3),
                      blurRadius: 4,
                      spreadRadius: 2,
                    )
                  ],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Bold',
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
