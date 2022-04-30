import 'package:flutter/material.dart';

class GradiendContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffeeeeee),
            Color(0xffdddddd),
            Color(0xffdddddd),
            Color(0xffbbbbbb),
            Color(0xff9a9a9a),
          ],
          stops: [0.1, 0.4, 0.7, 0.9, 1],
        ),
      ),
    );
  }
}