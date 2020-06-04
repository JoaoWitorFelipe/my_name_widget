import 'package:flutter_test/flutter_test.dart';
import 'package:my_name_widget/my_name_widget.dart';

void main() {

  group('Widget MyNameWidget', () {

    testWidgets('Widget MyName has name', (WidgetTester tester) async {
      final String myName = 'Joao Witor Felipe';
      await tester.pumpWidget(MyNameWidget(myName: myName));

      final nameFinder = find.text(myName);

      expect(nameFinder, findsOneWidget);
    });

    testWidgets('Widget MyName has no name', (WidgetTester tester) async {
      final String nameExpected = 'Joao Witor Felipe';
      await tester.pumpWidget(MyNameWidget());

      final nameFinder = find.text(nameExpected);

      expect(nameFinder, findsOneWidget);
    });

  });

}
