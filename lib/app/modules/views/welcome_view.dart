import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_login/app/modules/controllers/home_controller.dart';

class WelcomeView extends StatelessWidget {
  WelcomeView({Key? key}) : super(key: key);
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WelcomeView'),
        ),
        body:
            Center(child: Text('Email: ${controller.emailController.text}\n')),
      ),
    );
  }
}
