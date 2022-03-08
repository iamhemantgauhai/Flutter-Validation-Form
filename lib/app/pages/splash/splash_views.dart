import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_login/app/pages/splash/splash.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (context) {
        return Container(
            color: Colors.white,
            child:const FlutterLogo(),
        );
      }
    );
  }
}