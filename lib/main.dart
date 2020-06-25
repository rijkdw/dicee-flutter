import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: Image.asset('images/dice1.png'),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 10),
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
