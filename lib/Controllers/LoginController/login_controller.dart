import 'package:Suretler/Globals/Constans/keys.dart';
import 'package:Suretler/Globals/Utils/generate_md5.dart';
import 'package:Suretler/Globals/Widgets/custom_snackbar.dart';
import 'package:Suretler/Globals/global_vars.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../Models/user.dart';
import '../../Views/MainPage/main_page.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void onLoginButtonPressed() async {
    // Get.off(MainPage());
    login().then((value) {
      if (value) {
        Get.offAll(MainPage());
      }
    });
  }

  Future<bool> login() async {
    var snap = await FirebaseFirestore.instance
        .collection("Users")
        .where("email", isEqualTo: emailController.text)
        .get();
    if (snap.docs.isEmpty) {
      errorSnackBar("Bu emaile kayıtlı kullanıcı bulunamamıştır!");
    } else if (snap.docs.length == 1) {
      Map<String, dynamic> user = snap.docs.first.data();
      if (user['password'] == generateMd5(passwordController.text)) {
        GetStorage().write(userDataKey, user);
        currentUser = User.fromJson(user);
        return true;
      } else {
        errorSnackBar("Şifreniz hatalıdır");
      }
    } else {
      errorSnackBar("Yanlış bir şeyler var. Hemen yöneticiye haber verin!");
    }
    return false;
  }

  void onSignUpButtonPressed() {}
}
