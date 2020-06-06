import 'package:flutter/material.dart';

class SearchProtestPage extends StatefulWidget {
  SearchProtestPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SearchProtestPageState createState() => _SearchProtestPageState();
}

class _SearchProtestPageState extends State<SearchProtestPage> {

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