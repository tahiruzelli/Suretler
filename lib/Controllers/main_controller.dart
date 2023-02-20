import 'package:Suretler/Views/GamesPageView/games_page_view.dart';
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

  List<String> appBarTitles = [
    "Ana Sayfa",
    "Müzikler",
    "Sorular",
    "Oyunlar",
    "Profil",
  ];

  void changePage(int index) {
    currentPageIndex.value = index;
  }

  List<Widget> mainPages = [
   const  HomePageView(),
    const MusicsPageView(),
    QuesPageView(),
    const GamesPageView(),
    ProfilePageView(),
  ];
}
