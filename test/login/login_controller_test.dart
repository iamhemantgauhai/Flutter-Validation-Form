// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables, import_of_legacy_library_into_null_safe

import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:new_login/app/app.dart';
import 'package:new_login/app/pages/login/login.dart';
import 'package:new_login/app/pages/login/widgets/login_widgets.dart';

import '../variable.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Get.testMode = true;
  testWidgets('Login Check', (WidgetTester tester) async {
    Variable.loginBinding.builder();
    await tester
        .pumpWidget(Variable.getTheMaterialAppWrapper(const LoginView()));
    await tester.pumpAndSettle();
    expect(find.byKey(LoginWidgets.loginKey), findsOneWidget);
    expect(find.byKey(LoginWidgets.emailKey), findsOneWidget);
    expect(find.byKey(LoginWidgets.passwordKey), findsOneWidget);
  });

  test(
    "Valid Email & Password",
    () async {
      Variable.loginBinding.builder();
      var controller = Get.find<LoginController>();
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
