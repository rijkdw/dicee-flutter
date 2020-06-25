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
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            'DICEE',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              fontSize: 24,
            ),
          ),
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
  int rightDiceValue = 6;

  void randomLeft() {
    setState(() {
      leftDiceValue = Random().nextInt(6)+1;
    });
  }

  void randomRight() {
    setState(() {
      rightDiceValue = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: spacing),
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  child: Image.asset('images/dice$leftDiceValue.png'),
                  onPressed: () {
                    print('Left dice got clicked');
                    randomLeft();
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
                    randomRight();
                  },
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 60,
        ),
        InkWell(
          onTap: () {
            randomRight();
            randomLeft();
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 4,
              ),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Text(
              'ROLL',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: 24,
              ),
            ),
          ),
        )
      ],
    );
  }
}
