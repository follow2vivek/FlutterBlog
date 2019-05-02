import 'package:flutter/material.dart';
import 'package:flutter_uplab_login_ui/util/color.dart';
import 'package:flutter_uplab_login_ui/widget/header_logo.dart';
import 'package:flutter_uplab_login_ui/widget/login.dart';
import 'package:flutter_uplab_login_ui/widget/social.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 16),
        child: Column(
          children: <Widget>[
            Padding(
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
                      'LOGIN',
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Color(0xffe9eaec),
                  height: 2,
                  width: 100,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Social Login',
                  style: TextStyle(
                    fontFamily: 'Medium',
                    fontSize: 15,
                    color: Color(0xffe9eaec),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100,
                  color: Color(0xffe9eaec),
                  height: 2,
                )
              ],
            ),
            SizedBox(
              height: 20,
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: RichText(
                        text: TextSpan(
                          text: 'New User?',
                          style: TextStyle(
                              fontFamily: 'Medium',
                              fontSize: 14,
                              color: Color(0xff3f4b5a)),
                          children: [
                            TextSpan(
                              text: ' Sign Up',
                              style: TextStyle(
                                  fontFamily: 'Medium',
                                  fontSize: 14,
                                  color: Color(0xff5e75e4)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
