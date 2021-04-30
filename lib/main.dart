import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Welcome'),
          backgroundColor: Colors.black,
        ),
        body: Dicepage(),
      ),
    )
  );
}
class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int ld=1,rd=1;
  @override
  Widget build(BuildContext context){
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: FlatButton(
              onPressed:() {
                setState(() {
                  ld= Random().nextInt(6) +1;
                });
              },
              child: Image.asset('images/d$ld.png'))
            ,),
          Expanded(child: FlatButton(
              onPressed: (){
                setState(() {
                  rd= Random().nextInt(6)+1;
                });

              },
              child: Image.asset('images/d$rd.png')),),
        ],
      ),
    );
  }
}

