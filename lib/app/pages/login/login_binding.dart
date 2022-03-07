import 'package:get/get.dart';
import '../../../domain/usecases/auth_usecases.dart';
import 'login.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
          () => LoginController(Get.put(LoginPresenter(Get.put(AuthCase())))),
    );
  }
}