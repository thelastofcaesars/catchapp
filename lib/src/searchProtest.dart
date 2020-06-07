import 'package:flutter/material.dart';
import '../utils/protest_repository.dart';

class SearchProtestPage extends StatefulWidget {
  SearchProtestPage({Key key}) : super(key: key);

  @override
  _SearchProtestPageState createState() => _SearchProtestPageState();
}



class _SearchProtestPageState extends State<SearchProtestPage> {
  
  ProtestRepository protestRepo = ProtestRepository();
  
  String _search = "";
  
  void _onSearchedName(String value) {
      setState(() => _search = value);
  }

  List<String> _protestsNames = ["XD"];

  @override
  void initState() {  
    _protestsNames = List.from(_protestsNames)..addAll(protestRepo.getProtests());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Material(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            color: Colors.blue[100],
            child: GridView.count(
              childAspectRatio: 3,
              crossAxisCount: 2,
              children: <Widget>[
                TextFormField(
                  initialValue: 'Search',
                  style: TextStyle(color: Colors.black),
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(start: 80),
                  child: Row(
                    children: <Widget>[
                      InkWell(child: Icon(Icons.settings_applications, color: Colors.black, ),),
                      VerticalDivider(width: 30,),
                      InkWell(child: Icon(Icons.search, color: Colors.black, ),)
                    ],
                  )
                ), 
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _protestsNames.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return Container(
                  alignment: Alignment.center,
                  height: 160,
                  child: Text(_protestsNames[index], style: TextStyle(fontSize: 30),),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[200],
                    border: Border.all(
                      color: Colors.grey[100],
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(12)
                  ),
                );
              }
              //children: _p,
              //scrollDirection: Axis.vertical,
            ),
          ),        
        ],
      ),
    );
  }
}