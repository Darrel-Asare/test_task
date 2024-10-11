import 'package:flutter/material.dart';
import 'package:test_task/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

/// Inherit from StatelessWidget
class MyApp extends StatelessWidget {
  /// Pass key to superclass widget
  const MyApp({super.key});

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
