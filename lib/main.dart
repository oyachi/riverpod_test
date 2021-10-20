import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
/* screens */
import './screens/template_screen.dart';

void main() {
  runApp(
    ProviderScope(
        child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TemplateScreen()
    );
  }
}

