import 'package:Suretler/Views/GamesPageView/Widgets/improvisational_game_card.dart';
import 'package:flutter/material.dart';

class ImprovisationalGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ImprovisationalGameCard();
        },
      ),
    );
  }
}
