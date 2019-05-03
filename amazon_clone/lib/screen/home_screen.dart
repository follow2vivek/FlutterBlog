import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double topPaddng = MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Stack(
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
                  padding: EdgeInsets.fromLTRB(16, topPaddng + 16, 16, 16),
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
                  margin: EdgeInsets.only(top: topPaddng + 46),
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
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
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
            ),
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
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              padding: EdgeInsets.all(16),
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/iphone_black.png'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/iphone_red.png'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Save',
                            style: TextStyle(
                              color: Color(0xff7a7a7a),
                              fontFamily: 'Bold',
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '25%',
                            style: TextStyle(
                              color: Color(0xffffa726),
                              fontFamily: 'Bold',
                              fontSize: 20,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'iPhone XS 256 GB',
                        style: TextStyle(
                          color: Color(0xff1f1f1f),
                          fontFamily: 'Medium',
                          fontSize: 16,
                        ),
                      )
                    ],
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
