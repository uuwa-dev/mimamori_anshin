import 'package:flutter_test/flutter_test.dart';

import 'package:mimamori_anshin/main.dart';

void main() {
  testWidgets('App starts at Splash Screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Splash Screen'), findsOneWidget);
  });
}

