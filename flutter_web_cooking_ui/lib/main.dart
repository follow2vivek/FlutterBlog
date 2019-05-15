import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/add_money_screen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: FlatButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_){
              return AddMoneyScreen();
            }));
          }, child: Text('Go')),
        ),
      ),
    );
  }
}
