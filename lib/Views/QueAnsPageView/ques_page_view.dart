import 'package:Suretler/Controllers/QueAnsController/que_ans_controller.dart';
import 'package:Suretler/Globals/Constans/colors.dart';
import 'package:Suretler/Globals/Widgets/loading_indicator.dart';
import 'package:Suretler/Views/QueAnsPageView/Widgets/delete_edit_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Globals/Widgets/custom_tf.dart';

class QuesPageView extends StatelessWidget {
  QueAnsController queAnsController = Get.put(QueAnsController());
  @override
  Widget build(BuildContext context) {
    queAnsController.getQuestions();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: mainColor,
        onPressed: () => onCardPressed(),
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Obx(
        () => queAnsController.questionsLoading.value
            ? Center(
                child: LoadingIndicator(),
              )
            : ListView.builder(
                itemCount: queAnsController.questions.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4),
                    child: Card(
                      child: ListTile(
                        onTap: () {
                          queAnsController.onQueCardPressed(
                              queAnsController.questions[index]['id']);
                        },
                        onLongPress: () {
                          deleteEditPicker(
                            context,
                            () => queAnsController.deleteQuestion(
                              queAnsController.questions[index]['id'],
                              index,
                            ),
                            () {},
                          );
                        },
                        title:
                            Text(queAnsController.questions[index]['question']),
                        subtitle: const Text("20 cevap"),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
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
      title: "Soru Ekle",
      content: Column(
        children: [
          customTextField(
            "Soruyu yaziniz",
            queAnsController.questionTFController,
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
                  queAnsController.onAddQuestionButtonPressed();
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
