// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../pages/login/home_binding.dart';
import '../pages/login/home_view.dart';

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
