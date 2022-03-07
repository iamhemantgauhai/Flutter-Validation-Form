import 'dart:async';
import 'package:get/get.dart';
import 'package:new_login/app/pages/login/login.dart';
import 'package:new_login/app/pages/splash/splash_presenter.dart';

class SplashController extends GetxController {
  SplashController(SplashPresenter put);

  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(milliseconds: 3), () => Get.off(const LoginView()));
  }
}