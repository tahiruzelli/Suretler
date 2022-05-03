import 'package:Suretler/Models/improvisational_game.dart';
import 'package:flutter/material.dart';

class ImprovisationalGameCard extends StatelessWidget {
  late ImprovisationalGame game;
  ImprovisationalGameCard(this.game);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(game.title ?? ""),
            subtitle: Text(game.description ?? ""),
          ),
        ),
      ),
    );
  }
}
