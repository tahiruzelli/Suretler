import 'package:Suretler/Globals/Constans/colors.dart';
import 'package:flutter/material.dart';
import '../Constans/strings.dart';

AppBar customAppBar({
  Widget? action,
  String title = appName,
  bool showAction = true,
}) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(
        color: mainColor,
      ),
    ),
    foregroundColor: mainColor,
    leading: action,
    actions: [
      action ?? Container(),
    ],
    backgroundColor: iosGreyColor,
    centerTitle: true,
  );
}