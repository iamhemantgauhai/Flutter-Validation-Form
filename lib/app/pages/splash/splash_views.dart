import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/login.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
          ()=>Get.to(const LoginView()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}