import 'package:flutter/material.dart';
import 'package:catchapp/src/searchProtest.dart';
import 'package:catchapp/src/map.dart';
import 'package:catchapp/src/favourite.dart';
import 'package:catchapp/src/addProtest.dart';
import 'package:catchapp/src/settings.dart';

class StartPage extends StatefulWidget {
  StartPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  static bool isBiznes = false;
  int _cIndex = 0;
  String _title = isBiznes ? '#AllLivesMatter' : '#BlackLivesMatter';
  
  static List<Widget> _widgetOptions = <Widget> [
    MapPage(),
    Text(
      'Index 1',
    ),
    Text(
      'Index 2',
    ),
    Text(
      'Index 3',
    ),
    Text(
      'Index 4',
    ),
  ];
  
  void _onItemTapped(index) {
    setState(() {
      _cIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Center(
        child: _widgetOptions[_cIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map, color: Colors.black,),
            title: Text('nav', style: TextStyle(color: Colors.black), textScaleFactor: 0,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range, color: Colors.black,),
            title: Text('nav', style: TextStyle(color: Colors.black), textScaleFactor: 0,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.black,),
            title: Text('nav', style: TextStyle(color: Colors.black), textScaleFactor: 0,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black,),
            title: Text('nav', style: TextStyle(color: Colors.black), textScaleFactor: 0,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black,),
            title: Text('nav', style: TextStyle(color: Colors.black), textScaleFactor: 0,),
          ),
        ],
        currentIndex: _cIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber,
        onTap: (index) {
          _onItemTapped(index);
        },
      ),
    );
  }
}