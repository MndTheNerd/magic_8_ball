import 'package:flutter/material.dart';
import 'dart:math';

// setting up the basic layout, that doesn't need to change
// in this app, main Scaffold and the app bar
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade800,
          appBar: AppBar(
            title: Text('Magic 8 Balls'),
            backgroundColor: Colors.blue.shade900,
          ),
          //calling the MyApp Calss which is Statefull class and will have most
          // of the work and functionality
          body: MyApp(),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballnum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //setting up the a FlatButton with an image
        child: FlatButton(
          onPressed: () {
            //used to make sure the image updated when the state if ballnum changes
            setState(() {
              ballnum = Random().nextInt(5) + 1;
              print('ball pressed and now its $ballnum');
            });
          },
          child: Image.asset('images/ball$ballnum.png'),
        ),
      ),
    );
  }
}
