import 'package:flutter/material.dart';

class AddProtestPage extends StatefulWidget {
  AddProtestPage({Key key}) : super(key: key);

  @override
  _AddProtestPageState createState() => _AddProtestPageState();
}

class _AddProtestPageState extends State<AddProtestPage> {

  ActionRepository actionRepo = ActionRepository();
  List<String> _actions = ["Wybierz działanie"];
  List<String> _locations = ["Wybierz .."];
  String _selectedAction = "Wybierz działanie";
  String _selectedLocation = "Wybierz ..";

  int _countMembernRole = 1;
  //String _comments;
  //List<String> _myCrew = new List(3), _myCrewResult = new List(3);
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {  
    _actions = List.from(_actions)..addAll(actionRepo.getActions());
    super.initState();
  }

  _saveForm() {
    var form = formKey.currentState;
    /*if (form.validate()) {
      form.save();
      setState(() {
        _myActivityResult = _myActivity;
        _activityResult = _activity;
      });
    }*/
  }

  void _addNewMembernRoleBox() {
    setState(() {
      _countMembernRole = _countMembernRole + 1;
    });
  }
  void _removeLastMembernRoleBox() {
    setState(() {
      _countMembernRole = _countMembernRole > 1 ? _countMembernRole -1 : _countMembernRole;
    });
  }

  void _onSelectedAction(String value) {
    setState(() {
      _selectedLocation = "Wybierz ..";
      _locations = ["Wybierz .."];
      _selectedAction = value;
      _locations = List.from(_locations)..addAll(actionRepo.getLocalByAction(value));
    });
  }

  void _onSelectedLocation(String value) {
    setState(() => _selectedLocation = value);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _membersInAction =
    new List.generate(_countMembernRole, (int i) => new MembernRoleBox());
    return Material(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Form(
              key: formKey,
              child: ListView(
                children: <Widget>[
                  InputDecorator(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12, 0, 8, 0),
                      labelText: 'Protest celem',
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        items: _actions.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),
                        onChanged: (value) => _onSelectedAction(value),
                        value: _selectedAction,
                      ),
                    ),
                  ),
                  Divider(height: 10.0,),          
                  InputDecorator(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12, 10, 8, 0),
                      labelText: 'Wybierz lokację',
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        items: _locations.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),
                        onChanged: (value) => _onSelectedLocation(value),
                        value: _selectedLocation,
                      ),
                    ),
                  ),
                  InputDecorator(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12, 10, 8, 0),
                      labelText: 'Lokacja spoza listy',
                    ),
                    child: DropdownButtonHideUnderline(
                      child: TextFormField(initialValue: 'Wpisz alternatywną lokację',),
                    ),
                  ),
                  
                  Divider(height: 30.0,),
                  new Container(
                    height: 150.0,
                    child: new ListView(
                      children: _membersInAction,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  Divider(height: 10.0,),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      IconButton(
                        icon: Icon(Icons.add_circle),
                        iconSize: 30.0,
                        onPressed: _addNewMembernRoleBox,
                      ),
                      VerticalDivider(),
                      IconButton(
                        icon: Icon(Icons.remove_circle),
                        iconSize: 30.0,
                        onPressed: _removeLastMembernRoleBox,
                      ),
                    ],
                  ),
                  Divider(height: 10.0,),
                  Divider(height: 20.0,),
                  Text('Rozpoczęcie:', textScaleFactor: 1.2,),
                  Divider(height: 20.0,),
                  DataTimePicker(),
                  Divider(height: 20.0,),
                  Text('Zakończenie:', textScaleFactor: 1.2,),
                  Divider(height: 20.0,),
                  DataTimePicker(),
                  Divider(height: 20.0,),
                  InputDecorator(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12, 10, 8, 0),
                      labelText: 'Komentarz',
                    ),
                    child: DropdownButtonHideUnderline(
                      child: TextFormField(),
                    ),
                  ),
                  Divider(height: 30.0,),
                  Center(
                    child: RaisedButton(
                      child: Text('Wyślij',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      disabledColor: Colors.red,
                      onPressed: _saveForm(),
                    ),
                  ),
                  Divider(height: 30.0,),
                ]
              ),
            ),
          ),
        ]
      )
    );
  }
}