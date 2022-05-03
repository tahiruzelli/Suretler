import 'package:Suretler/Globals/Widgets/pdf_viewer.dart';
import 'package:Suretler/Models/classic_game.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClassicGameCard extends StatelessWidget {
  late ClassicGame game;
  ClassicGameCard(this.game);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Get.to(PdfViewer(game.pdfUrl ?? ""));
            },
            title: Text("${game.title}\n${game.author}"),
            subtitle: Text(game.description ?? ""),
          ),
        ),
      ),
    );
  }
}
