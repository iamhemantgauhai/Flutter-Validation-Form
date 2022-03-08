// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_login/app/navigator/app_pages.dart';

import '../../login/login_controller.dart';

class DashBoardWidget extends StatelessWidget {
   const DashBoardWidget({Key? key}) : super(key: key);
  static const dataKey = Key('Data_key');
  static const backKey = Key('Back_key');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WelcomeView'),
      ),
      body: GetBuilder<LoginController>(
        builder: (controller) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Email: ${controller.email.text}',
                textDirection: TextDirection.ltr,
                key: dataKey,
              ),
            ),
            Center(
              child: RaisedButton(
                key: backKey,
                child: const Text('Log Out'),
                onPressed: () async {
                  Get.offAndToNamed(Paths.logIn);
                },
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
