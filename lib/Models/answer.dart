class Answer {
  String? answer;
  String? id;
  String? questionId;

  Answer({this.answer, this.id, this.questionId});

  Answer.fromJson(Map<String, dynamic> json) {
    answer = json['answer'];
    id = json['id'];
    questionId = json['questionId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['answer'] = answer;
    data['id'] = id;
    data['questionId'] = questionId;
    return data;
  }
}
