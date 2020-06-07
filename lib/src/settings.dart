import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  String _username = "RescueR";
  String _status = "Protester";
  String _rank = "Looter";
  String _sPlaceholder = "Lorem ipsum";

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
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Username: '),
                    Text(_username, style: TextStyle(fontSize: 18),),
                    Divider(height: 8,),
                    Text('Status: '),
                    Text(_status, style: TextStyle(fontSize: 18),),
                    Divider(height: 8,),
                    Text('Rank: '),
                    Text(_rank, style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(height: 20,),
        Container(
          height: 200,
          color: Colors.grey[200],
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Email: '),
              Text(_sPlaceholder, style: TextStyle(fontSize: 18),),
              Divider(height: 10,),
              Text('Organisation: '),
              Text(_sPlaceholder, style: TextStyle(fontSize: 18),),
              Divider(height: 10,),
              Text('Phone: '),
              Text(_sPlaceholder, style: TextStyle(fontSize: 18),),
              Divider(height: 10,),
              Text('FAX: '),
              Text(_sPlaceholder, style: TextStyle(fontSize: 18),),
            ],
          ),
        ),
        Divider(height: 10,),
        Container(
          height: 200,
          color: Colors.grey[200],
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('About me: '),
              Text(_sPlaceholder, style: TextStyle(fontSize: 18),),
            ],
          ),
        ),
        Divider(height: 10,),
        Container(
          height: 60,
          color: Colors.green[700],
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('About author: ', style: TextStyle(fontSize: 14, color: Colors.white),),
              Text('Lone Warrior in the Universe, the Wizard', style: TextStyle(fontSize: 18, color: Colors.white),),
            ],
          ),
        ),
      ],
    );
  }
}