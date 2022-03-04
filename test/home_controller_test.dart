// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:new_login/app/pages/login/login_views.dart';
import 'package:new_login/app/pages/login/widgets/login_widgets.dart';

import 'variable.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Get.testMode = true;

  testWidgets(
    'Login Check',
        (tester) async{
      Variable.loginBinding.builder();
      await tester.pumpWidget(Variable.getTheMaterialAppWrapper(const HomeView()));
      final loginButton=find.byKey(LoginWidgets.loginKey);
      final emailField=find.byKey(LoginWidgets.emailKey);
      final password=find.byKey(LoginWidgets.passwordKey);
      await tester.enterText(emailField, 'hemantgauhai@gmail.com');
      await tester.enterText(password, '!@#123asdASD');
      // await tester.tap(loginButton);
    },
  );
}
