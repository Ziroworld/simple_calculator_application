import 'package:flutter/material.dart';
import 'package:simple_calculator_application/view/dashboard_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Calculator.",
      home: Dashboard(),
    );
  }
}
