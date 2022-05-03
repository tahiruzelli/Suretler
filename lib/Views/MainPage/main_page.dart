import 'package:Suretler/Controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Globals/Constans/colors.dart';
import '../../Globals/Widgets/custom_appbar.dart';

class MainPage extends StatelessWidget {
  MainController mainController = Get.put(MainController());
  Color getIconColor(int index) {
    return mainController.currentPageIndex.value != index
        ? mainColor
        : darkBlue;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: mainController.currentPageIndex.value == 3
            ? null
            : customAppBar(
                title: mainController
                    .appBarTitles[mainController.currentPageIndex.value],
              ),
        body: mainController.currentPage,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) => mainController.changePage(index),
          currentIndex: mainController.currentPageIndex.value,
          fixedColor: darkBlue,
          items: [
            BottomNavigationBarItem(
              backgroundColor: iosGreyColor,
              icon: Icon(
                Icons.home,
                color: getIconColor(0),
              ),
              label: "Ana Sayfa",
            ),
            BottomNavigationBarItem(
              backgroundColor: iosGreyColor,
              icon: Icon(
                Icons.my_library_music_outlined,
                color: getIconColor(1),
              ),
              label: "Müzikler",
            ),
            BottomNavigationBarItem(
              backgroundColor: iosGreyColor,
              icon: Icon(
                Icons.question_answer_outlined,
                color: getIconColor(2),
              ),
              label: "Soru-Cevap",
            ),
            BottomNavigationBarItem(
              backgroundColor: iosGreyColor,
              icon: Icon(
                Icons.theater_comedy_outlined,
                color: getIconColor(3),
              ),
              label: "Oyunlar",
            ),
            BottomNavigationBarItem(
              backgroundColor: iosGreyColor,
              icon: Icon(
                Icons.person,
                color: getIconColor(4),
              ),
              label: "Profil",
            ),
          ],
        ),
      ),
    );
  }
}
