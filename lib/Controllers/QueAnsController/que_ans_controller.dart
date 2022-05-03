import 'package:Suretler/Views/QueAnsPageView/ans_page_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QueAnsController extends GetxController {
  TextEditingController questionTFController = TextEditingController();
  TextEditingController answerTFController = TextEditingController();

  RxList answers = [].obs;
  RxList questions = [].obs;
  RxBool questionsLoading = false.obs;
  RxBool answersLoading = false.obs;

  void onQueCardPressed(String questionId) {
    Get.to(AnsPageView(questionId));
  }

  void onAddQuestionButtonPressed() {
    addQuestion();
  }

  void onAddAnswerButtonPressed(String questionId) {
    addAnswer(questionId);
  }

  Future deleteAnswer(String answerId, int index) async {
    FirebaseFirestore.instance.collection("Answers").doc(answerId).delete();
    answers.removeAt(index);
  }

  Future deleteQuestion(String questionId,int index) async {
    FirebaseFirestore.instance.collection("Questions").doc(questionId).delete();
    questions.removeAt(index);
  }

  Future addAnswer(String questionId) async {
    await FirebaseFirestore.instance.collection("Answers").add({
      "answer": answerTFController.text,
      "questionId": questionId,
    });
    var snap = await FirebaseFirestore.instance
        .collection("Questions")
        .doc(questionId)
        .get();
    int currentAnswerCount = snap.data()?['answerCount'];
    currentAnswerCount++;
    FirebaseFirestore.instance.collection("Questions").doc(questionId).update({
      "answerCount": currentAnswerCount,
    });
    answerTFController.clear();
    getAnswers(questionId);
  }

  Future addQuestion() async {
    await FirebaseFirestore.instance.collection("Questions").add({
      "answerCount": 0,
      "question": questionTFController.text,
    });
    questionTFController.clear();
    getQuestions();
  }

  Future getQuestions() async {
    try {
      questions.clear();
      questionsLoading.value = true;
      var snap = await FirebaseFirestore.instance.collection('Questions').get();
      for (var doc in snap.docs) {
        Map tmp = doc.data();
        tmp['id'] = doc.id;
        questions.add(tmp);
      }
      questionsLoading.value = false;
    } catch (e) {
      print(e);
    }
  }

  Future getAnswers(String questionId) async {
    try {
      answers.clear();
      answersLoading.value = true;
      var snap = await FirebaseFirestore.instance
          .collection('Answers')
          .where('questionId', isEqualTo: questionId)
          .get();
      for (var doc in snap.docs) {
        Map tmp = doc.data();
        tmp['id'] = doc.id;
        answers.add(tmp);
      }
      answersLoading.value = false;
    } catch (e) {
      print(e);
    }
  }
}
