import 'package:flutter/material.dart';
import 'package:flutter_uplab_login_ui/util/color.dart';

class Login extends StatelessWidget {
  const Login({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 185),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 3,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Login',
            style: TextStyle(
              fontFamily: 'Bold',
              fontSize: 24,
              color: colorText,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Medium',
              color: colorInputText,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              labelText: 'Username',
              labelStyle: TextStyle(
                fontFamily: 'Medium',
                color: colorText,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Medium',
              color: colorInputText,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              labelText: 'Password',
              labelStyle: TextStyle(
                fontFamily: 'Medium',
                color: colorText,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            child: Text(
              'Forgot password?',
              style: TextStyle(
                fontFamily: 'Medium',
                fontSize: 12,
                color: colorBlueText,
              ),
            ),
            alignment: Alignment.centerRight,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
