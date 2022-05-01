import 'package:Suretler/Globals/Constans/colors.dart';
import 'package:flutter/material.dart';

customTextField(String desc, TextEditingController controller,
    {bool obscureText = false, TextInputType? textInputType}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(2),
      boxShadow: const [
        BoxShadow(
          offset: Offset(0, 0),
          color: Colors.grey,
          spreadRadius: 1,
          blurRadius: 5,
        )
      ],
    ),
    child: TextField(
      obscureText: obscureText,
      controller: controller,
      keyboardType: textInputType,
      style: const TextStyle(
        color: mainColor,
        fontSize: 12,
      ),
      cursorColor: mainColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 10),
        border: InputBorder.none,
        labelText: desc,
        labelStyle: const TextStyle(
          color: iosGreyColor,
          fontSize: 12,
        ),
      ),
    ),
  );
}
