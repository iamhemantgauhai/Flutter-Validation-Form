// ignore_for_file: void_checks, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_login/app/pages/login/login_controller.dart';
import 'package:new_login/app/pages/login/widgets/login_widgets.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (_controller) {
      return Scaffold(
        body: LoginWidgets()
      );
    });
  }
}
