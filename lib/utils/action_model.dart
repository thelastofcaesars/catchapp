class ActionModel {
  String action;
  String alias;
  List<String> locations;

  ActionModel({this.action, this.alias, this.locations});

  ActionModel.fromJson(Map<String, dynamic> json) {
    action = json['action'];
    alias = json['alias'];
    locations = json['locations'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['action'] = this.action;
    data['alias'] = this.alias;
    data['locations'] = this.locations;
    return data;
  }
}