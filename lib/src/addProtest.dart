import 'package:flutter/material.dart';
import '../utils/action_repository.dart';
import '../utils/datatime_picker.dart';

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
  String _organiser = "Organiser";
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {  
    _actions = List.from(_actions)..addAll(actionRepo.getActions());
    super.initState();
  }

  _saveForm() {
    var form = formKey.currentState;
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