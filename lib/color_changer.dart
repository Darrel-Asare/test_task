import 'dart:math';

import 'package:flutter/material.dart';

/// Inherit from StatelessWidget
class ColorChanger extends StatefulWidget {
  /// Pass key to superclass widget
  const ColorChanger({super.key});

  @override
  _ColorChangerState createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  final Random _random = Random();

  /// Default background color
  Color _color = Colors.white;

  /// Generate 16777216 colors using RGB
  /// Fourth argument should be within 0.0 to 1.0 for opacity
  void changeColor() {
    setState(() {
      _color = Color.fromRGBO(
        _random.nextInt(
          256,
        ),
        _random.nextInt(
          256,
        ),
        _random.nextInt(
          256,
        ),
        1.0,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: changeColor,
        child: ColoredBox(
          color: _color,
          child: const Center(
            child: Text(
              'Hello there',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
