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
      "action": "Protest Firmowy",
      "alias": "protest-firmowy",
      "locations": [
        "Polska",
        "Wrocław",
        "Warszawa",
        "Inna",
      ]
    },
    {
      "action": "Protest Pokojowy",
      "alias": "protest-pokojowy",
      "locations": [
        "Polska",
        "Wrocław",
        "Warszawa",
        "Inna",
      ]
    },
    {
      "action": "Protest Polityczny",
      "alias": "protest-polityczny",
      "locations": [
        "Polska",
        "Wrocław",
        "Warszawa",
        "Inna",
      ]
    },
    {
      "action": "Protest Przedsiębiorców",
      "alias": "protest-przedsiębiorców",
      "locations": [
        "Polska",
        "Wrocław",
        "Warszawa",
        "Inna",
      ]
    },
    {
      "action": "Protest Społeczny",
      "alias": "protest-społeczny",
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
      "action": "Zamieszki",
      "alias": "looting",
      "locations": [
        "Warszawa",
        "Poznań",
        "Minneapolis",
      ]
    },
    {
      "action": "Inny Protest",
      "alias": "protest-inny",
      "locations": [
        "Oleśnica",
        "Wrocław",
        "Inna",
      ]
    }
  ];
}