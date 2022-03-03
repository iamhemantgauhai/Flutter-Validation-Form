// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

import 'package:get/get.dart';
import 'package:new_login/app/pages/login/home_controller.dart';
import 'package:test/test.dart';

final controller = Get.put(HomeController());
var validPassword;
void main() {
  test('Empty Email Test', () {
    var result = controller.email;
    print(result);
    expect(result, 'Provide valid email');
  });
}