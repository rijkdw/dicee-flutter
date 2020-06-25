import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  final spacing = 20.0;

  int leftDiceValue = 1;
  int rightDiceValue = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: spacing),
              child: FlatButton(
                padding: EdgeInsets.all(0),
                child: Image.asset('images/dice$leftDiceValue.png'),
                onPressed: () {
                  print('Left dice got clicked');
                  setState(() {
                    leftDiceValue = Random().nextInt(6) + 1;
                  });
                },
              ),
            ),
          ),
          SizedBox(
            width: spacing,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: spacing),
              child: FlatButton(
                padding: EdgeInsets.all(0),
                child: Image.asset('images/dice$rightDiceValue.png'),
                onPressed: () {
                  print('Right dice got clicked');
                  setState(() {
                    rightDiceValue = Random().nextInt(6) + 1;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
