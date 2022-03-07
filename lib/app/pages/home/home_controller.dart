import 'dart:async';
import 'package:get/get.dart';
import 'package:new_login/app/pages/home/home_presenter.dart';
import 'package:new_login/app/pages/login/login_views.dart';

class HomeController extends GetxController {
  HomeController(HomePresenter put);

  @override
  void onInit() {
    super.onInit();
    Timer(
      const Duration(milliseconds: 3),
          () => Get.off(
        const HomeView(),
      ),
    );
  }
}
