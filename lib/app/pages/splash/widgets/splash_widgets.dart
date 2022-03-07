import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../splash_conroller.dart';

class SplashWidget extends StatelessWidget{
  SplashWidget({Key? key}) : super(key: key);
  final controller = Get.put(SplashController);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}