class ClassicGame {
  String? title;
  String? description;
  String? author;
  String? pdfUrl;

  ClassicGame({this.title, this.description, this.author, this.pdfUrl});

  ClassicGame.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    author = json['author'];
    pdfUrl = json['pdfUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['author'] = author;
    data['pdfUrl'] = pdfUrl;
    return data;
  }
}
