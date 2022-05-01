import 'package:Suretler/Controllers/QueAnsController/que_ans_controller.dart';
import 'package:Suretler/Views/GamesPageView/home_page_view.dart';
import 'package:Suretler/Views/HomePageView/home_page_view.dart';
import 'package:Suretler/Views/MusicsPageView/musics_page_view.dart';
import 'package:Suretler/Views/QueAnsPageView/ques_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Views/ProfilPageView/profile_page_view.dart';

class MainController extends GetxController {
  RxInt currentPageIndex = 0.obs;

  Widget get currentPage {
    return mainPages[currentPageIndex.value];
  }

  void changePage(int index){
    currentPageIndex.value = index;
  }

  List<Widget> mainPages = [
    HomePageView(),
    MusicsPageView(),
    QuesPageView(),
    GamesPageView(),
    ProfilePageView(),
  ];
}
