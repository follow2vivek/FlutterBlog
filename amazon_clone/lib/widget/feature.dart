import 'package:flutter/material.dart';

class Feature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            height: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'iPhone XS 256 GB',
                style: TextStyle(
                  color: Color(0xff1f1f1f),
                  fontFamily: 'Medium',
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '859,00£',
                      style: TextStyle(
                        color: Color(0xff1f1f1f),
                        fontFamily: 'Bold',
                        fontSize: 15,
                      ),
                    ),
                    TextSpan(
                      text: ' Original price:',
                      style: TextStyle(
                        color: Color(0xff7a7a7a),
                        fontFamily: 'Bold',
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: ' 1059,00£',
                      style: TextStyle(
                        color: Color(0xff7a7a7a),
                        fontFamily: 'Bold',
                        fontSize: 14,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
