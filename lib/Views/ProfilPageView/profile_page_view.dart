import 'package:Suretler/Controllers/ProfileController/profile_controller.dart';
import 'package:Suretler/Globals/Widgets/detail_line.dart';
import 'package:Suretler/Globals/global_vars.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePageView extends StatelessWidget {
  ProfileController profileController = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Container(
              height: Get.width / 2,
              width: Get.width / 2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(currentUser!.photoUrl ?? emptyUserImage),
                ),
              ),
            ),
          ),
          DetailLine("İsim:", currentUser!.fullName ?? ""),
          DetailLine("Email: ",currentUser!.email ?? "" ),
          DetailLine("Seviye: ", currentUser!.level.toString()),
          Spacer(),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () => profileController.exit(),
              child: const Text("Çıkış"),
            ),
          )
        ],
      ),
    );
  }
}
