import 'package:Suretler/Globals/Constans/keys.dart';
import 'package:Suretler/Globals/global_vars.dart';
import 'package:Suretler/Views/LoginView/login_view.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProfileController extends GetxController {
  void exit() {
    currentUser = null;
    GetStorage().remove(userDataKey);
    Get.offAll(const LoginPage());
  }
}
