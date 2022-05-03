import 'package:flutter/material.dart';

class ImprovisationalGameCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text("30 Saniye"),
            subtitle: Text("Seyirciye sorulan bir konu ele alınarak aynı oyun ilk başta 30 saniyede sonra 18, 9, 5, 3 ve 1 saniyede oynanır"),
          ),
        ),
      ),
    );
  }
}
