import 'action_model.dart';

class ActionRepository {

  List<Map> getAll() => _actions;

  getLocalByAction(String action) => _actions
      .map((map) => ActionModel.fromJson(map))
      .where((item) => item.action == action)
      .map((item) => item.locations)
      .expand((i) => i)
      .toList();


  List<String> getActions() => _actions
      .map((map) => ActionModel.fromJson(map))
      .map((item) => item.action)
      .toList();

  List _actions = [
    {
      "action": "#AllLivesMatter",
      "alias": "alm",
      "locations": [
        "Wrocław",
        "Waszyngton DC",
        "Los Angeles",
        "Oleśncia",
      ]
    },
    {
      "action": "#BlackLivesMatter",
      "alias": "blm",
      "locations": [
        "Warszawa",
        "Poznań",
        "Minneapolis",
      ]
    },
    {
      "action": "Protest Ekologiczny",
      "alias": "protest-ekologiczny",
      "locations": [
        "Polska",
        "Wrocław",
        "Warszawa",
        "Inna",
      ]
    },
    {
      "action": "Company Protest",
      "alias": "protest-company",
      "locations": [
        "Polska",
        "Wrocław",
        "Warszawa",
        "Inna",
      ]
    },
    {
      "action": "Peace Protest",
      "alias": "peace-protest",
      "locations": [
        "Polska",
        "Wrocław",
        "Warszawa",
        "Inna",
      ]
    },
    {
      "action": "Political Protest",
      "alias": "political-protest",
      "locations": [
        "Polska",
        "Wrocław",
        "Warszawa",
        "Inna",
      ]
    },
    {
      "action": "Bussiness Protest",
      "alias": "bussiness-protest",
      "locations": [
        "Polska",
        "Wrocław",
        "Warszawa",
        "Inna",
      ]
    },
    {
      "action": "Social Protest",
      "alias": "social-protest",
      "locations": [
        "Oleśnica",
        "Hala Atol",
        "Stadion Miejski",
        "Stawy Miejskie",
        "Podzamcze",
        "Rynek",
        "Śladem AED",
        "Wrocław",
        "Inna",
      ]
    },
    {
      "action": "Looting Protest",
      "alias": "looting-protest",
      "locations": [
        "Warszawa",
        "Poznań",
        "Minneapolis",
      ]
    },
    {
      "action": "Other Protest",
      "alias": "other-protest",
      "locations": [
        "Oleśnica",
        "Wrocław",
        "Inna",
      ]
    }
  ];
}