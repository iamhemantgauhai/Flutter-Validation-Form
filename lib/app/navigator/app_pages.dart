// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:new_login/app/pages/login/login_binding.dart';
import 'package:new_login/app/pages/login/login_views.dart';
import 'package:new_login/app/pages/splash/splash.dart';


part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.logIn;

  static final routes = [
    GetPage<LoginView>(
      name: Paths.logIn,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage<SplashView>(
      name: Paths.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
