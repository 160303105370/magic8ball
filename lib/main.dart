import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Center(child: Text('ASK MY ANYTHING'),),
          backgroundColor: Colors.blue[900],
        ),
          body: MagicBall(),
      ),
    ),

  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballnumber=3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(onPressed: (){
                  setState(() {
                      ballnumber = Random().nextInt(5) + 1;
                  });
            },
                child: Image.asset('images/ball$ballnumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
