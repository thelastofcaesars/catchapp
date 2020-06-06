import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  StartPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  int _cIndex = 0;
  
  static const List<Widget> _widgetOptions = <Widget> [
    Text(
      'Index 0',
    ),
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
        title: Text(widget.title),
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