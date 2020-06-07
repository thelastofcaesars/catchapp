import 'package:flutter/material.dart';
import 'package:search_map_place/search_map_place.dart';

class MapPage extends StatefulWidget {
  MapPage({Key key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SearchMapPlaceWidget(
          apiKey: 'AIzaSyDJj1rS41UTXjcMllyH7vUpLOgMwD130_Y',
        ),
      ),
    );
  }
}