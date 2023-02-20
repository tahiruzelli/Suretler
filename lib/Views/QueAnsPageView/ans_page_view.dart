import 'package:Suretler/Controllers/QueAnsController/que_ans_controller.dart';
import 'package:Suretler/Globals/Widgets/custom_appbar.dart';
import 'package:Suretler/Globals/Widgets/custom_tf.dart';
import 'package:Suretler/Globals/Widgets/loading_indicator.dart';
import 'package:Suretler/Views/QueAnsPageView/Widgets/delete_edit_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Globals/Constans/colors.dart';

class AnsPageView extends StatelessWidget {
  AnsPageView(this.questionId, {Key? key}) : super(key: key);
  final String questionId;

  final QueAnsController queAnsController = Get.put(QueAnsController());
  @override
  Widget build(BuildContext context) {
    queAnsController.getAnswers(questionId);
    return Scaffold(
      appBar: customAppBar(title: "Cevaplar"),
      floatingActionButton: FloatingActionButton(
        backgroundColor: mainColor,
        onPressed: () => onCardPressed(),
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Obx(
        () => queAnsController.answersLoading.value
            ? const Center(
                child: LoadingIndicator(),
              )
            : ListView.builder(
                itemCount: queAnsController.answers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4),
                    child: Card(
                      child: ListTile(
                        onLongPress: () {
                          deleteEditPicker(
                            context,
                            () => queAnsController.deleteAnswer(
                              queAnsController.answers[index].id ?? "",
                              index,
                            ),
                            () {},
                          );
                        },
                        title:
                            Text(queAnsController.answers[index].answer ?? ""),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }

  Future onCardPressed() {
    return Get.defaultDialog(
      title: "Cevap Ekle",
      content: Column(
        children: [
          customTextField(
            "Cevabi yaziniz",
            queAnsController.answerTFController,
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text(
                  "Vazgec",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
              ),
              TextButton(
                onPressed: () {
                  queAnsController.onAddAnswerButtonPressed(questionId);
                  Get.back();
                },
                child: const Text(
                  "Ekle",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
