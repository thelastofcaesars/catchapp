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
      "action": "Transport Dializowy",
      "alias": "transport-dializowy",
      "locations": [
        "Dom Pacjenta",
        "SD Oleśnica",
        "Szpital Oleśnica",
        "Szpital Namysłów",
        "Inna",
      ]
    },
    {
      "action": "Transport Sanitarny",
      "alias": "transport-sanitarny",
      "locations": [
        "Dom Pacjenta",
        "SD Oleśnica",
        "Inna",
      ]
    },
    {
      "action": "Zabezpieczenie",
      "alias": "zabezpieczenie",
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
      "action": "JWS",
      "alias": "jws",
      "locations": [
        "Oleśnica",
        "Wrocław",
        "A4",
        "Inna",
      ]
    },
    {
      "action": "Inny Wyjazd",
      "alias": "inny-wyjad",
      "locations": [
        "Oleśnica",
        "Wrocław",
        "A4",
        "Inna",
      ]
    },
    {
      "action": "Szkolenie",
      "alias": "szkolenie",
      "locations": [
        "Oleśnica",
        "Siedziba",
        "Inna",
      ]
    },
    {
      "action": "Spotkanie",
      "alias": "spotkanie",
      "locations": [
        "Siedziba",
        "Dom Spotkań NGO Brzozowa",
        "Inna",
      ]
    },
    {
      "action": "Inne",
      "alias": "inne",
      "locations": [
        "Oleśnica",
        "Wrocław",
        "Inna",
      ]
    }
  ];
}