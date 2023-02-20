import 'package:Suretler/Controllers/GameController/game_controller.dart';
import 'package:Suretler/Globals/Widgets/loading_indicator.dart';
import 'package:Suretler/Views/GamesPageView/Widgets/class_game_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClassicGames extends StatelessWidget {
  final GameController gameController = Get.find();

  ClassicGames({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => gameController.classicGamesLoading.value
            ? const Center(
                child: LoadingIndicator(),
              )
            : ListView.builder(
                itemCount: gameController.classicGames.length,
                itemBuilder: (context, index) {
                  return ClassicGameCard(gameController.classicGames[index]);
                },
              ),
      ),
    );
  }
}
