import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(child: Text('Ask Me Anything')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                setState(() {
                  answer();
                });
              },
              child: Image.asset('images/ball$changeNo.png'),
            ),
          ],
        ),
      ),
    );
  }
}

int changeNo = 1;

void answer() {
  changeNo = Random().nextInt(5) + 1;
}
