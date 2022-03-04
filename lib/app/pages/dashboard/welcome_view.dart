// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:new_login/app/pages/login/login_controller.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WelcomeView'),
        ),
        body: GetBuilder<HomeController>(
          builder: (controller) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text('Email: ${controller.email.text}\n'),
              ),
              Center(
                child: RaisedButton(
                  child: const Text('Log Out'),
                  onPressed: () async {
                    var box1 = await Hive.openBox("loginData");
                    box1.clear();
                    Get.back();
                  },
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
