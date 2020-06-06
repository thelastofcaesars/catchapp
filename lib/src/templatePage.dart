import 'package:flutter/material.dart';

class TemplatePage extends StatefulWidget {
  TemplatePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TemplatePageState createState() => _TemplatePageState();
}

class _TemplatePageState extends State<TemplatePage> {

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