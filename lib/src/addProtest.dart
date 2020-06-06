import 'package:flutter/material.dart';

class AddProtestPage extends StatefulWidget {
  AddProtestPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AddProtestPageState createState() => _AddProtestPageState();
}

class _AddProtestPageState extends State<AddProtestPage> {

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