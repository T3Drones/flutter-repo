import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.orangeAccent,
          textTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.orangeAccent, fontSize: 40),
              headline1: TextStyle(color: Colors.black, fontSize: 100))),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "get ripped",
        ),
      ),
      body: Center(
        child: FlatButton(
          child:
              Text("Hello Wolrd", style: Theme.of(context).textTheme.headline1),
          color: Colors.orangeAccent,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
      ),
    );
  }
}
