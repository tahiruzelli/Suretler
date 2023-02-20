import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constans/colors.dart';

class DetailLine extends StatelessWidget {
  final String title;
  final String content;
  const DetailLine(this.title,this.content, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: Get.width * 0.04),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: Get.height * 0.02,
                    color: Colors.black,
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(right: Get.width * 0.04),
                  child: Text(
                    content,
                    style: TextStyle(
                      fontSize: Get.height * 0.02,
                      color: mainColor,
                    ),
                    textAlign: TextAlign.right,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}