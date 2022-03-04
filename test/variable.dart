import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_login/app/pages/login/login_controller.dart';
import 'package:new_login/app/pages/login/login_presenter.dart';
import 'package:new_login/domain/usecases/auth_usecases.dart';
abstract class Variable{
  static final loginBinding = BindingsBuilder<dynamic>(
        () {
      Get.lazyPut(
            () => HomeController(
          Get.put(
            HomePresenter(
              Get.put(
                AuthCase(),
              ),
            ),
          ),
        ),
      );
    },
  );

  static ScreenUtilInit getTheMaterialAppWrapper(
      Widget widget,
      ) =>
      ScreenUtilInit(
        designSize: const Size(375, 745),
        builder: () => GetMaterialApp(
          home: widget,
        ),
      );
}