// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables, import_of_legacy_library_into_null_safe

import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:new_login/app/app.dart';
import 'package:new_login/app/pages/dashboard/widgets/dashboard_widgets.dart';

import '../variable.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Get.testMode = true;
  testWidgets(
    'Login Check',
    (WidgetTester tester) async {
      Variable.loginBinding.builder();
      Variable.dashBoardBinding.builder();
      await tester.pumpWidget(Variable.getTheMaterialAppWrapper(
        const LoginView(),
      ));
      final data = find.byKey(DashBoardWidget.dataKey);
      await tester.pumpWidget(Variable.getTheMaterialAppWrapper(
        const DashBoardWidget(),
      ));
      expect(data, findsOneWidget);
    },
  );
  testWidgets('DashBoard Test', (WidgetTester tester) async {
    Variable.dashBoardBinding.builder();
    Variable.loginBinding.builder();
    await tester
        .pumpWidget(Variable.getTheMaterialAppWrapper(const LoginView()));
    await tester
        .pumpWidget(Variable.getTheMaterialAppWrapper(const DashBoardView()));
    await tester.pumpAndSettle();
    expect(find.byKey(DashBoardWidget.dataKey), findsOneWidget);
  });
}
