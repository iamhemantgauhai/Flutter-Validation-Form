import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:new_login/app/navigator/app_pages.dart';
import 'package:new_login/app/pages/splash/splash.dart';
import 'package:new_login/app/pages/splash/widgets/splash_widgets.dart';

import '../variable.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Get.testMode = true;
  Get.addPages(AppPages.routes);
  Variable.splashBinding.builder();
  testWidgets('Splash Screen Test', (WidgetTester tester) async {
    final data = find.byKey(SplashWidget.containKey);
    expect(data, findsNothing);
    debugPrint("1st-Got 0 Widget.");
    await tester.pumpWidget(Variable.getTheMaterialAppWrapper(
      const SplashView(),
    ));
    expect(data, findsOneWidget);
    debugPrint("2nd-Got 1 Widget.");
  });
}
