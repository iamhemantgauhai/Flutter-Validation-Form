import 'package:flutter_test/flutter_test.dart';

import 'test_helpers.dart';

void main() {
  test('Data Check', () {
    final user = UserModel(
      userId: 1,
      id: 1,
      title: '',
      body: '',
    );

    expect(user.userId, 1);
    expect(user.id, 1);
    expect(user.title, '');
    expect(user.body, '');
  });
}