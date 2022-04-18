import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../splash_conroller.dart';

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
            child:Image.network('https://wallpapercave.com/uwp/uwp77938.jpeg'),
        );
      }
    );
  }
}