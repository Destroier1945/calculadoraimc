// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:calculadoraimc/pages/homepage.dart';
import 'package:calculadoraimc/pages/result.dart';
import 'package:calculadoraimc/utils/pessoa_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:provider/provider.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget( ChangeNotifierProvider(create: (context) => PessoaData(),
      child:MaterialApp(home: const HomePage(title: Text(''),),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) =>  const HomePage(title: Text('')),
          '/result': (BuildContext context) =>  Result(title: Text(''))

        },
      ),
    ),);

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
