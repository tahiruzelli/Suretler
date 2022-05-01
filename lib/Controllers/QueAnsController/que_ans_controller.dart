import 'package:Suretler/Views/QueAnsPageView/ans_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QueAnsController extends GetxController {
  TextEditingController questionTFController = TextEditingController();
  TextEditingController answerTFController = TextEditingController();

  RxList answers = [
    "otobuse akbil basmadan binerdim",
    "otobuse akbil basmadan binerdim",
    "otobuse akbil basmadan binerdim",
    "otobuse akbil basmadan binerdim",
    "otobuse akbil basmadan binerdim",
    "otobuse akbil basmadan binerdim",
  ].obs;

  RxList questions = [
    "gorunmez olsaydin ne yapardin",
    "gorunmez olsaydin ne yapardin",
    "gorunmez olsaydin ne yapardin",
    "gorunmez olsaydin ne yapardin",
    "gorunmez olsaydin ne yapardin",
    "gorunmez olsaydin ne yapardin",
  ].obs;

  void onQueCardPressed() {
    Get.to(AnsPageView());
  }

  void onAddQuestionButtonPressed() {
    addQuestion();
  }

  void onAddAnswerButtonPressed() {
    addAnswer();
  }

  Future deleteAnswer(int index) async {
    answers.removeAt(index);
  }

  Future deleteQuestion(int index) async {
    questions.removeAt(index);
  }

  Future addAnswer() async {
    answers.add(answerTFController.text);
    answerTFController.clear();
  }

  Future addQuestion() async {
    questions.add(questionTFController.text);
    questionTFController.clear();
  }
}
