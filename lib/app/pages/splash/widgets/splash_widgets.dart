import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../splash_controller.dart';

class SplashWidget extends StatelessWidget{
  SplashWidget({Key? key}) : super(key: key);
  final controller = Get.put(SplashController);
  static const containKey = Key('My_Key');
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (context) {
        return Container(
          key: containKey,
            color: Colors.white,
            child: Image.asset('images/PapiLogo.jpeg'),
        );
      }
    );
  }
}