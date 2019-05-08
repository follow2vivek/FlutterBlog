import 'package:flutter/material.dart';
import 'package:smart_pay_ui/shape/curve_shape.dart';
import 'package:smart_pay_ui/utils/color.dart';
import 'package:smart_pay_ui/widget/balance_widget.dart';
import 'package:smart_pay_ui/widget/send_money.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFBF3E7),
      child: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              ClipPath(
                child: Container(
                  padding:
                      EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  height: 250,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [colorApp, colorApp_100]),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            Expanded(
                              child: SizedBox(),
                            ),
                            Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://avatars2.githubusercontent.com/u/24294081?s=460&v=4'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Material(
                                  color: Colors.transparent,
                                  child: Text(
                                    'Vivek Sharma',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'Bold',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: Text(
                                    '+91 8091234568',
                                    style: TextStyle(
                                      color: Color(0xffFCDCBE),
                                      fontSize: 15,
                                      fontFamily: 'Regular',
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                clipper: CurveShape(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 140),
                child: BalanceWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 350),
                child: SendMoneyWidget(),
              )
            ],
          )
        ],
      ),
    );
  }
}
