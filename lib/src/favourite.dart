import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget {
  FavouritePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
      ),
    );
  }
}