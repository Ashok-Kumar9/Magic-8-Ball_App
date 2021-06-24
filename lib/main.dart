import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(color: Colors.grey[850]),
          ),
        ),
      ),
      body: BallPage(),
    ),
  ),
);

class BallPage extends StatefulWidget {

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNum = Random().nextInt(5) + 1;

  void changeBallNum() {
    ballNum = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextButton(
          onPressed: () {
            setState(() {
              changeBallNum();
              print(ballNum);
            });
          },
          child: Image(
            image: AssetImage('images/ball$ballNum.png'),
          ),
        ),
      ],
    );
  }
}

