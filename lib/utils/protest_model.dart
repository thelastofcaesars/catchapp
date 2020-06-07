class ProtestModel {
  String protest;
  String alias;
  String location;
  String organizer;
  int people;
  int start;
  int end;
  String comment;

  ProtestModel({this.protest, this.alias, this.location, this.organizer, this.people, this.start, this.end, this.comment});

  ProtestModel.fromJson(Map<String, dynamic> json) {
    protest = json['protest'];
    alias = json['alias'];
    location = json['location'];
    organizer = json['organizer'];
    people = json['people'];
    start = json['start'];
    end = json['end'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['protest'] = this.protest;
    data['alias'] = this.alias;
    data['location'] = this.location;
    data['organizer'] = this.organizer;
    data['people'] = this.people;
    data['start'] = this.start;
    data['end'] = this.end;
    data['comment'] = this.comment;
    return data;
  }
}