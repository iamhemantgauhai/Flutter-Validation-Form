import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:new_login/app/app.dart';
import 'package:new_login/domain/usecases/auth_usecases.dart';

abstract class Variable {
  static final splashBinding = BindingsBuilder<dynamic>(
    () {
      Get.lazyPut(
        () => SplashController(
          Get.put(
            SplashPresenter(
              Get.put(
                AuthCase(),
              ),
            ),
          ),
        ),
      );
    },
  );
  static final loginBinding = BindingsBuilder<dynamic>(
    () {
      Get.lazyPut(
        () => LoginController(
          Get.put(
            LoginPresenter(
              Get.put(
                AuthCase(),
              ),
            ),
          ),
        ),
      );
    },
  );

  static final dashBoardBinding = BindingsBuilder<dynamic>(
    () {
      Get.lazyPut(
        () => DashBoardController(
          Get.put(
            DashBoardPresenter(
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
        builder: (x) => GetMaterialApp(
          home: widget,
        ),
      );
}
