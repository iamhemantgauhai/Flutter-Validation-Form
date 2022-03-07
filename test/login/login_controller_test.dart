// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables, import_of_legacy_library_into_null_safe

import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:new_login/app/pages/login/login_controller.dart';
import 'package:new_login/app/pages/login/login_views.dart';
import 'package:new_login/app/pages/login/widgets/login_widgets.dart';

import '../variable.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Get.testMode = true;
  testWidgets(
    'Login Check',
    (tester) async {
      Variable.loginBinding.builder();
      await tester.pumpWidget(Variable.getTheMaterialAppWrapper(
        const HomeView(),
      ));
      final login = find.byKey(LoginWidgets.loginKey);
      final email = find.byKey(LoginWidgets.emailKey);
      final password = find.byKey(LoginWidgets.passwordKey);
      await tester.enterText(email, 'hemantgauhai@gmail.com');
      await tester.enterText(password, '!@#123asdASD');
      await tester.tap(login);
    },
  );

  test(
    "Valid Email & Password",
    () async {
      Variable.loginBinding.builder();
      var controller = Get.find<HomeController>();
      String? result1 = controller.validateEmail("");
      expect(result1, "Provide valid Email");
      String? result2 = controller.validateEmail("hemanth@appscrip.co");
      expect(result2, null);
      String? result3 = controller.validatePassword("");
      expect(result3, "Provide valid Password");
      String? result4 = controller.validatePassword("asdASD!@#123");
      expect(result4, null);
    },
  );
}
