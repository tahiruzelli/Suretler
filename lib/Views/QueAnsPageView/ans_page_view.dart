import 'package:Suretler/Controllers/QueAnsController/que_ans_controller.dart';
import 'package:Suretler/Globals/Widgets/custom_appbar.dart';
import 'package:Suretler/Globals/Widgets/custom_tf.dart';
import 'package:Suretler/Views/QueAnsPageView/Widgets/delete_edit_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Globals/Constans/colors.dart';

class AnsPageView extends StatelessWidget {
  QueAnsController queAnsController = Get.put(QueAnsController());
  @override
  Widget build(BuildContext context) {
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
        () => ListView.builder(
          itemCount: queAnsController.answers.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onLongPress: () {
                  deleteEditPicker(
                    context,
                    () => queAnsController.deleteAnswer(index),
                    () {},
                  );
                },
                title: Text(queAnsController.answers[index]),
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
                  queAnsController.onAddAnswerButtonPressed();
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
