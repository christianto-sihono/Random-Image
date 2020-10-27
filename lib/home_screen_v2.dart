import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  HomeScreen2({Key key}) : super(key: key);

  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  dynamic listImages = [
    "assets/images/1.jpeg",
    "assets/images/2.jpeg",
    "assets/images/3.jpeg",
    "assets/images/4.jpeg",
    "assets/images/5.jpeg",
    "assets/images/6.jpeg",
    "assets/images/7.jpeg",
    "assets/images/8.jpeg",
    "assets/images/9.jpeg",
    "assets/images/10.jpeg"
  ];
  Random _random;

  var imageToShow = "assets/images/1.jpeg";

  void _newImage() {
    setState(() {
      _random = new Random();
      imageToShow = listImages[_random.nextInt(listImages.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Today's Pleasure"),
      ),
      body: Container(
        child: Center(
          child: GestureDetector(
            child: Image.asset(
              imageToShow.toString(),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            onTap: _newImage,
          ),
        ),
      ),
    );
  }
}
