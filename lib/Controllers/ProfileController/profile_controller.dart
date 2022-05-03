import 'package:Suretler/Views/LoginView/login_view.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  void exit() {
    Get.offAll(LoginPage());
  }
}
