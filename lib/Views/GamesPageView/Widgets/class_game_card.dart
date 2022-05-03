import 'package:Suretler/Globals/Widgets/pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClassicGameCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Get.to(PdfViewer("https://firebasestorage.googleapis.com/v0/b/suretler-6a3ba.appspot.com/o/cupdf.pdf?alt=media&token=b2fb998c-8b38-4037-94f9-8ae0c02f5bdd"));
            },
            title: Text("Yangın Yerinde Orkideler\nMehmet Baydur"),
            subtitle: Text(
                "Oyunda, ideallerini gerçekleştirme cesareti oluşmamış, hayatı yarım yaşayan, çevresine yaydığı umutsuzluk hissi ve intihar düşüncesi ile ortaya çıkan bir 'adam', Berduş Nuri ile Fahişe Neriman üzerinden bir hayata tutunma hikayesi konu ediliyor."),
          ),
        ),
      ),
    );
  }
}
