import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  String _username = "RescueR";
  String _status = "Protester/Bussinessman";
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          height: 150,
          color: Colors.grey[200],
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Image( // your picture from last HackYeah ;)
                  height: 128, 
                  width: 128, 
                  image: NetworkImage('https://www.shareicon.net/data/512x512/2015/12/04/682309_square_512x512.png'),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListView(
                  children: <Widget>[
                    Text('Username: '),
                    Text(_username),
                    Text('Status: '),
                    Text(_status),
                  ],
                ),
              )
            ],
          ),
        ),
        Divider(height: 10,),
        Container(
          height: 50,
          color: Colors.grey[200],
          child: const Center(child: Text('Entry B')),
        ),
        Divider(height: 10,),
        Container(
          height: 50,
          color: Colors.grey[200],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    );
  }
}