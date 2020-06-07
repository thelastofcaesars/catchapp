import 'package:catchapp/utils/action_model.dart';

import 'protest_model.dart';

class ProtestRepository {

  List<Map> getAll() => _protests;


  getProtestsByLocal(String location) => _protests
      .map((map) => ProtestModel.fromJson(map))
      .where((item) => item.location == location)
      .map((item) => item.protest)
      .toList();

  getProtestsByOrganizer(String organizer) => _protests
      .map((map) => ProtestModel.fromJson(map))
      .where((item) => item.organizer == organizer)
      .map((item) => item.protest)
      .toList();

  List<String> getProtests() => _protests
      .map((map) => ProtestModel.fromJson(map))
      .map((item) => item.protest)
      .toList();

  List<String> getLocations() => _protests
      .map((map) => ProtestModel.fromJson(map))
      .map((item) => item.location)
      .toList();

  List<String> getOrganizers() => _protests
      .map((map) => ProtestModel.fromJson(map))
      .map((item) => item.organizer)
      .toList();
  
  List<int> getPeople() => _protests
      .map((map) => ProtestModel.fromJson(map))
      .map((item) => item.people)
      .toList();

  List<int> getStart() => _protests
      .map((map) => ProtestModel.fromJson(map))
      .map((item) => item.start)
      .toList();

  List<int> getEnd() => _protests
      .map((map) => ProtestModel.fromJson(map))
      .map((item) => item.end)
      .toList();

  void addProtest(String protest, String alias, String location, 
  String organizer, int people, int start, int end, String comment) {
    ProtestModel protestModel = new ProtestModel(protest: protest, 
    alias: alias, location: location, organizer: organizer, people: people,
    start: start, end: end, comment: comment);
    var mapProtest = protestModel.toJson();
    _protests.add(mapProtest);
  }
  /*List<String> getLocal() => _locations
      .map((map) => ProtestModel.fromJson(map))
      .map((item) => item.location)
      .toList();
      
  List<String> getOrganizer() => _organizers
      .map((map) => ProtestModel.fromJson(map))
      .map((item) => item.organizer)
      .toList();
  List<String> getPeople() => _people
      .map((map) => ProtestModel.fromJson(map))
      .map((item) => item.people)
      .toList();
*/
  List _protests = [
    {
      "protest": "Strajk Przedsiebiorcow",
      "alias": "bussiness-protest",
      "location": "Warszawa",
      "organizer": "PiT",
      "people": 2312,
      "start": 123412,
      "end": 321323,
      "comment": "Komentarz dla publiki",
    },
    {
      "protest": "#AllLivesMatter Wroclove",
      "alias": "alm",
      "location": "Wrocław",
      "organizer": "RescueR",
      "people": 15110,
      "start": 123414,
      "end": 321324,
      "comment": "Komentarz dla publiki",
    },
    {
      "protest": "#BlackLivesMatter Poznan",
      "alias": "blm",
      "location": "Warszawa",
      "organizer": "RescueRNemeziS",
      "people": 3785,
      "start": 123415,
      "end": 321325,
      "comment": "Komentarz dla publiki",
    },
    {
      "protest": "Amazon GO - Just Walk Out",
      "alias": "looting",
      "location": "Minneapolis",
      "organizer": "GiFfed Badman",
      "people": 74139,
      "start": 123416,
      "end": 321328,
      "comment": "Komentarz dla publiki",
    },
  ];
}