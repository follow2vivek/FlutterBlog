import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          height: 350,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff1e2a54),
                Color(0xff1773b3),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, MediaQuery.of(context).padding.top + 16, 16, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                'assets/images/menu_icon.png',
                fit: BoxFit.fill,
                width: 18,
              ),
              Image.asset(
                'assets/images/amazon_logo.png',
                fit: BoxFit.fill,
                width: 80,
              ),
              Image.asset(
                'assets/images/cart_icon.png',
                fit: BoxFit.fill,
                width: 20,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 46),
          child: Theme(
            data: ThemeData(
              hintColor: Colors.transparent,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'What are you looking for?',
                hintStyle: TextStyle(
                  color: Color(0xffb4c2d3),
                  fontSize: 14,
                  fontFamily: 'Medium',
                ),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ),
                ),
                contentPadding: EdgeInsets.all(12),
                suffixIcon: Icon(
                  FontAwesomeIcons.search,
                  color: Color(0xffb4c2d3),
                  size: 15,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          child: Image.asset(
            'assets/images/echo.png',
            fit: BoxFit.fill,
          ),
          right: 0,
          bottom: 0,
        ),
        Positioned(
          child: Text(
            'NEW',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Bold',
              color: Color(0xffb4c2d3),
            ),
          ),
          top: 155,
          left: 16,
        ),
        Positioned(
          child: Text(
            'echo plus',
            style: TextStyle(
              fontSize: 26,
              fontFamily: 'Bold',
              color: Color(0xff00afff),
            ),
          ),
          top: 180,
          left: 16,
        ),
        Positioned(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'just',
                  style: TextStyle(
                    color: Color(0xffb4c2d3),
                    fontFamily: 'Medium',
                    fontSize: 16,
                  ),
                ),
                TextSpan(
                  text: ' 89.',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Bold',
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: '99£',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Bold',
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          top: 200,
          left: 16,
        ),
        Positioned(
          child: Container(
            width: 110,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                'DISCOVER',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Medium',
                  fontSize: 12,
                ),
              ),
            ),
          ),
          top: 245,
          left: 16,
        ),
        Positioned(
          bottom: -40,
          left: 16,
          child: Container(
            width: MediaQuery.of(context).size.width - 32,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 2,
                  color: Colors.black.withOpacity(0.3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xff4ede7b),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      FontAwesomeIcons.mapMarkerAlt,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Shipping address',
                      style: TextStyle(
                        color: Color(0xff7a7a7a),
                        fontFamily: 'Medium',
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'King Street, London, UK',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Medium',
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                Image.asset(
                  'assets/images/button.png',
                  width: 18,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
