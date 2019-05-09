import 'package:flutter/material.dart';

class StoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: Text(
                  'STORES',
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
          Container(
            height: 150,
            margin: EdgeInsets.only(bottom: 20),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width - 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 110,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKmddbQIpTVPWc4OPZLmsEMtIJvV9tBVRk8cVqKFMOJ9mRJ4qG'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            "Domino's Pizza",
                            style: TextStyle(
                              color: Color(0xffC7C8CC),
                              fontSize: 16,
                              fontFamily: 'Regular',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 110,
                        width: MediaQuery.of(context).size.width - 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO9QdQB-cozkrh3o7iDXFR7X4eC5P3YGiygl3Jeo6g4CuH7udE'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            "McDonald's",
                            style: TextStyle(
                              color: Color(0xffC7C8CC),
                              fontSize: 16,
                              fontFamily: 'Regular',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
