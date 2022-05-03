class ImprovisationalGame {
  String? title;
  String? description;

  ImprovisationalGame({this.title, this.description});

  ImprovisationalGame.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    return data;
  }
}