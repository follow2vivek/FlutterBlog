import 'package:flutter/material.dart';
import 'package:flutter_uplab_login_ui/util/color.dart';
import 'package:flutter_uplab_login_ui/widget/header_logo.dart';
import 'package:flutter_uplab_login_ui/widget/login.dart';
import 'package:flutter_uplab_login_ui/widget/social.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 16),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(right: 16),
                child: Stack(
                  fit: StackFit.loose,
                  children: <Widget>[
                    Container(
                      height: 250,
                      child: HeaderLogo(),
                    ),
                    Login()
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Align(
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
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 1,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      'assets/image/bottom_bg.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Social(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
