import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_login/app/pages/splash/splash.dart';
import 'package:new_login/app/pages/splash/widgets/splash_widgets.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>  GetBuilder<SplashController>(
    builder: (_controller) {
      return SplashWidget();
    }
  );
}
