import 'package:get/get.dart';

class GameController extends GetxController {
  Future getImprovisationalGames() async {}
  Future getClassicGames() async {}
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getImprovisationalGames();
    getClassicGames();
  }
}
