import 'package:get/get.dart';
import 'package:new_login/app/pages/login/home_presenter.dart';
import 'package:new_login/domain/usecases/auth_usecases.dart';

import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(Get.put(HomePresenter(Get.put(AuthCase())))),
    );
  }
}
