import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff1346b4),
                Color(0xff0cb2eb),
              ],
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              FontAwesomeIcons.facebookF,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xffff4645),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              FontAwesomeIcons.google,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff0cb2eb),
                Color(0xff5190e6),
              ],
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              FontAwesomeIcons.twitter,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff0cb2eb),
                Color(0xff006ced),
              ],
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              FontAwesomeIcons.linkedin,
              color: Colors.white,
              size: 20,
            ),
          ),
        )
      ],
    );
  }
}
