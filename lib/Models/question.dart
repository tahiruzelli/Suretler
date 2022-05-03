class Question {
  String? question;
  int? answerCount;
  String? id;

  Question({this.question, this.answerCount, this.id});

  Question.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    answerCount = json['answerCount'];
    id = json['questionId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['question'] = question;
    data['answerCount'] = answerCount;
    data['questionId'] = id;
    return data;
  }
}
