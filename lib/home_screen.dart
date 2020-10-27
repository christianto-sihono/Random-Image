import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _imageurl = 'https://source.unsplash.com/random/';

  Widget imageprovider() {
    return Image.network(
      _imageurl,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }

  void _newImage() {
    setState(() {
      _imageurl;
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
            child: imageprovider(),
            onTap: _newImage,
          ),
        ),
      ),
    );
  }
}
