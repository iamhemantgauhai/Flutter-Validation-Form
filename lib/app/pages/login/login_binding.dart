import 'package:get/get.dart';
import 'package:new_login/app/pages/login/login_controller.dart';
import 'package:new_login/app/pages/login/login_presenter.dart';
import 'package:new_login/domain/usecases/auth_usecases.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
          () => HomeController(Get.put(HomePresenter(Get.put(AuthCase())))),
    );
  }
}