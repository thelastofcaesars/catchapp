import 'package:catchapp/utils/protest_repository.dart';
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
  ProtestRepository protestRepository = ProtestRepository();

  List<String> _actions = ["Choose action"];
  List<String> _locations = ["Choose .."];
  String _protestName = "Protest name";
  String _selectedAction = "Choose action";
  String _selectedAlias = "Choose action";
  String _selectedLocation = "Choose ..";
  String _organizer = "Current User";
  String _comment = "COMMENT";

  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {  
    _actions = List.from(_actions)..addAll(actionRepo.getActions());
    super.initState();
  }

  _saveForm() {
    var form = formKey.currentState;
    if((_protestName == "") || (_protestName == "Protest name") || 
      (_selectedAction == "Choose action") || (_selectedLocation == "Choose ..") 
      || (_organizer == "Current User"))
      return;
      // catch alias/action here !!! bad value, need parsing or sth
    protestRepository.addProtest(_protestName, _selectedAction, _selectedLocation, _organizer, 0, 10000, 200000, _comment);
  }

  void _onSelectedAction(String value) {
    setState(() {
      _selectedLocation = "Choose ..";
      _locations = ["Choose .."];
      _selectedAction = value;
      _locations = List.from(_locations)..addAll(actionRepo.getLocalByAction(value));
    });
  }

  void _onSelectedLocation(String value) {
    setState(() => _selectedLocation = value);
  }

  void _onSelectedName(String value) {
    setState(() => _protestName = value);
  }

  void _onSelectedComment(String value) {
    setState(() => _comment = value);
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
                  Divider(height: 10.0,),
                  InputDecorator(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12, 10, 8, 0),
                      labelText: 'Name of Protest',
                    ),
                    child: DropdownButtonHideUnderline(
                      child: TextFormField(
                        initialValue: _protestName,
                        onChanged: (value) => _onSelectedName(value),
                      ),
                    ),
                  ),
                  Divider(height: 10.0,),
                  InputDecorator(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12, 0, 8, 0),
                      labelText: 'Protest Target',
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
                      labelText: 'Choose location',
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
                      labelText: 'Other Location',
                    ),
                    child: DropdownButtonHideUnderline(
                      child: TextFormField(
                        initialValue: 'Write down other location',
                        onChanged: (value) => _onSelectedLocation(value),
                      ),
                    ),
                  ),
                  
                  Divider(height: 30.0,),
                  Text('Start:', textScaleFactor: 1.2,),
                  Divider(height: 20.0,),
                  DataTimePicker(),
                  Divider(height: 20.0,),
                  Text('End:', textScaleFactor: 1.2,),
                  Divider(height: 20.0,),
                  DataTimePicker(),
                  Divider(height: 20.0,),
                  InputDecorator(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(12, 10, 8, 0),
                      labelText: 'Comment',
                    ),
                    child: DropdownButtonHideUnderline(
                      child: TextFormField(
                        initialValue: _comment,
                        onChanged: (value) => _onSelectedComment(value),
                      ),
                    ),
                  ),
                  Divider(height: 30.0,),
                  Center(
                    child: RaisedButton(
                      child: Text('Send',
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