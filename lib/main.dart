import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: FlatButton(
                padding: EdgeInsets.all(0),
                child: Image.asset('images/dice1.png'),
                onPressed: () => print('Left dice got clicked'),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: FlatButton(
                padding: EdgeInsets.all(0),
                child: Image.asset('images/dice1.png'),
                onPressed: () => print('Right dice got clicked'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
