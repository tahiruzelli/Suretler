import 'package:Suretler/Views/GamesPageView/Widgets/improvisational_game_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controllers/GameController/game_controller.dart';
import '../../../Globals/Widgets/loading_indicator.dart';

class ImprovisationalGames extends StatelessWidget {
  final GameController gameController = Get.find();

  ImprovisationalGames({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => gameController.classicGamesLoading.value
            ? const Center(
                child: LoadingIndicator(),
              )
            : ListView.builder(
                itemCount: gameController.improvisationalGames.length,
                itemBuilder: (context, index) {
                  return ImprovisationalGameCard(gameController.improvisationalGames[index]);
                },
              ),
      ),
    );
  }
}
