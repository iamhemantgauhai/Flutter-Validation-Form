// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables, import_of_legacy_library_into_null_safe

import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:new_login/app/pages/dashboard/widgets/dashboard_widgets.dart';
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
      Variable.dashBoardBinding.builder();
      await tester.pumpWidget(Variable.getTheMaterialAppWrapper(
        const HomeView(),
      ));
      final login = find.byKey(LoginWidgets.loginKey);
      final email = find.byKey(LoginWidgets.emailKey);
      final password = find.byKey(LoginWidgets.passwordKey);
      final data = find.byKey(WelcomeWidgets.dataKey);
      final logOut = find.byKey(WelcomeWidgets.backKey);
      await tester.enterText(email, 'h@g.co');
      await tester.enterText(password, '!@#123asdASD');
      await tester.tap(login);
      await tester.pumpWidget(Variable.getTheMaterialAppWrapper(
        WelcomeWidgets(),
      ));
      expect(data, findsOneWidget);
      await tester.tap(logOut);
    },
  );
}
