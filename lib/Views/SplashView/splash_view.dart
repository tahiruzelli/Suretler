import 'dart:async';
import 'package:Suretler/Globals/Constans/keys.dart';
import 'package:Suretler/Globals/global_vars.dart';
import 'package:Suretler/Models/user.dart';
import 'package:Suretler/Views/LoginView/login_view.dart';
import 'package:Suretler/Views/MainPage/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  final double _currentOpacity = 0.5;
  double opacityLevel = 0;
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  initState() {
    super.initState();
    startTimer();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this, value: 0.1);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);

    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  startTimer() async {
    Timer(const Duration(seconds: 3), () {
      var user = GetStorage().read(userDataKey);
      if (user == null) {
        Get.offAll(const LoginPage());
      } else {
        currentUser = User.fromJson(user);
        Get.offAll(MainPage());
      }
    });
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ScaleTransition(
              scale: _animation,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                  ),
                ],
              ),
            ),
            AnimatedOpacity(
              curve: Curves.linear,
              opacity: _currentOpacity,
              duration: const Duration(seconds: 5),
            ),
          ],
        ),
      ),
    );
  }
}
