import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Login.dart';
import 'package:flutter_app/RandomWords.dart'; // ignore: uri_does_not_exist


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: undefined_class

    return new MaterialApp(
      title: 'w to flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcom to flutter'),
        ),
        body: new Center(
          child: new Login()
        ),
      ),
    );
  }
}



