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
    return GetBuilder<LoginController>(
      builder: (controller) => SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 60, left: 16, right: 16),
          width: context.width,
          height: context.height,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('WelcomeView'),
            ),
            body: Column(
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
        ),
      ),
    );
  }
}
