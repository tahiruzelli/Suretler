import 'package:Suretler/Models/classic_game.dart';
import 'package:Suretler/Models/improvisational_game.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class GameController extends GetxController {
  List<ClassicGame> classicGames = [];
  List<ImprovisationalGame> improvisationalGames = [];

  RxBool classicGamesLoading = false.obs;
  RxBool improvisationalGamesLoading = false.obs;

  Future getImprovisationalGames() async {
    improvisationalGamesLoading.value = true;
    improvisationalGames.clear();
    var snap = await FirebaseFirestore.instance
        .collection("ImprovisationalGames")
        .get();
    for (var doc in snap.docs) {
      improvisationalGames.add(ImprovisationalGame.fromJson(doc.data()));
    }
    improvisationalGamesLoading.value = false;
  }

  Future getClassicGames() async {
    classicGamesLoading.value = true;
    classicGames.clear();
    var snap = await FirebaseFirestore.instance
        .collection("ClassicGames")
        .get();
    for (var doc in snap.docs) {
      classicGames.add(ClassicGame.fromJson(doc.data()));
    }
    classicGamesLoading.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    getImprovisationalGames();
    getClassicGames();
  }
}
