import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt currentPageIndex = 0.obs;

  Widget get currentPage {
    return mainPages[currentPageIndex.value];
  }

  void changePage(int index){
    currentPageIndex.value = index;
  }

  List<Widget> mainPages = [
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
}
