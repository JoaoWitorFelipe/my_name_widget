library my_name_widget;

import 'package:flutter/material.dart';

/// Widget to center a text preferably with its name :D.
/// Test only widget
class MyNameWidget extends StatelessWidget {
  final String myName;

  const MyNameWidget({Key key, this.myName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        myName ?? 'Joao Witor Felipe',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
