import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:new_login/app/pages/splash/splash.dart';
import 'package:new_login/app/pages/splash/widgets/splash_widgets.dart';

import '../variable.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Get.testMode = true;
  testWidgets('Splash Screen Test', (tester) async {
    final data = find.byKey(SplashWidget.containKey);
    Variable.splashBinding.builder();
    await tester.pumpWidget(Variable.getTheMaterialAppWrapper(
      const SplashView(),
    ));
    await tester.pumpAndSettle(const Duration(seconds: 5));
    expect(data, findsOneWidget);
  });
}
