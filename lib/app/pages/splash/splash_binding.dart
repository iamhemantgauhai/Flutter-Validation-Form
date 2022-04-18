import 'package:get/get.dart';
import 'package:new_login/app/pages/splash/splash_controller.dart';
import 'package:new_login/app/pages/splash/splash_presenter.dart';
import 'package:new_login/domain/usecases/auth_usecases.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
          () => SplashController(Get.put(SplashPresenter(Get.put(AuthCase())))),
    );
  }
}
