import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:mimamori_anshin/main.dart';

void main() {
  testWidgets('Splash Screen navigates to Role Selection after delay',
      (tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyApp()));
    expect(find.text('Splash Screen'), findsOneWidget);
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();
    expect(find.text('Role Selection Screen'), findsOneWidget);
  });
}

