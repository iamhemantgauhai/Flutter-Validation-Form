import 'dart:async';
import 'package:get/get.dart';
import 'package:new_login/app/navigator/app_pages.dart';
import 'package:new_login/app/pages/splash/splash_presenter.dart';

class SplashController extends GetxController {
  SplashController(SplashPresenter put);

  @override
  void onInit() {
    super.onInit();
   if(!Get.testMode) Future.delayed(const Duration(seconds: 5), () => Get.offAndToNamed(Paths.logIn));
  }
}
