import 'package:Suretler/Controllers/GameController/game_controller.dart';
import 'package:Suretler/Views/GamesPageView/Pages/classic_games.dart';
import 'package:Suretler/Views/GamesPageView/Pages/improvisational_games.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Globals/Constans/colors.dart';

class GamesPageView extends StatefulWidget {
  const GamesPageView({Key? key}) : super(key: key);

  @override
  _GamesPageView createState() => _GamesPageView();
}

class _GamesPageView extends State<GamesPageView>
    with SingleTickerProviderStateMixin {
  GameController gameController = Get.put(GameController());
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      vsync: this,
      initialIndex: 0,
      length: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: TabBarView(
        controller: tabController,
        children: [
          ImprovisationalGames(),
          ClassicGames(),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(
        "Oyunlar",
        style: TextStyle(
          color: mainColor,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: TabBar(
          controller: tabController,
          labelPadding: const EdgeInsets.only(left: 5, right: 5),
          unselectedLabelColor: Colors.red,
          tabs: [
            Tab(
              child: SizedBox(
                width: Get.width / 2 - 15,
                child: const Center(
                  child: Text(
                    'Doğaçlama',
                    style: TextStyle(
                      color: mainColor,
                    ),
                  ),
                ),
              ),
            ),
            Tab(
              child: SizedBox(
                width: Get.width / 2 - 15,
                child: const Center(
                  child: Text(
                    'Klasik',
                    style: TextStyle(
                      color: mainColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
          indicatorColor: mainColor,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
      foregroundColor: mainColor,
      backgroundColor: iosGreyColor,
      centerTitle: true,
    );
  }
}
