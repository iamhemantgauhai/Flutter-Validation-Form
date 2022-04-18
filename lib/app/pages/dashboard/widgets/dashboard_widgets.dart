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
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                  fit: BoxFit.cover)),
          padding: const EdgeInsets.only(top: 250, left: 16, right: 16),
          width: context.width,
          height: context.height,
          child: SingleChildScrollView(
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    "Welcome to PaPi",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    'Email: ${controller.email.text}',
                    textDirection: TextDirection.ltr,
                    key: dataKey,
                    style: const TextStyle(fontSize: 20,color: Colors.white),
                  ),
                  const SizedBox(height: 50),
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
      ),
    );
  }
}
