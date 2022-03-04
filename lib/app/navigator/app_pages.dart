// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:new_login/app/pages/login/login_binding.dart';
import 'package:new_login/app/pages/login/login_views.dart';


part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
