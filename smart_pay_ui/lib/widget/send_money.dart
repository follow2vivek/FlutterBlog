import 'package:flutter/material.dart';

class SendMoneyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: Text(
                  'SEND MONEY TO',
                  style: TextStyle(
                    color: Color(0xff94989E),
                    fontSize: 16,
                    fontFamily: 'Regular',
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Text(
                  'VIEW ALL',
                  style: TextStyle(
                    color: Color(0xffF77223),
                    fontSize: 14,
                    fontFamily: 'Bold',
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Color(0xffF88F2F), Color(0xffF9C150)],
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        'New',
                        style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Regular',
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              recentMoney('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB4779P9URKxgbaH4cpX3uGAUpZRwdnYOB_Mpyb0WOqtrnZL-pLg'),
              recentMoney('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWme8mDGxUINCYONbUIZel9bMe0BQDkNJbefFG_AP46jY5n-KI5A'),
            ],
          )
        ],
      ),
    );
  }

  Container recentMoney(String imageUrl) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Material(
            color: Colors.transparent,
            child: Text(
              'Ajay',
              style: TextStyle(
                color: Colors.black54,
                fontFamily: 'Regular',
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
