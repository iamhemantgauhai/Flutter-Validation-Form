import 'package:get/get.dart';
import 'package:new_login/app/pages/dashboard/dashboard_controller.dart';
import 'package:new_login/app/pages/dashboard/dashboard_presenter.dart';
import 'package:new_login/domain/usecases/auth_usecases.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardController>(
          () => DashBoardController(Get.put(DashBoardPresenter(Get.put(AuthCase())))),
    );
  }
}