import 'package:Suretler/Views/GamesPageView/Widgets/class_game_card.dart';
import 'package:flutter/material.dart';

class ClassicGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ClassicGameCard();
        },
      ),
    );
  }
}
