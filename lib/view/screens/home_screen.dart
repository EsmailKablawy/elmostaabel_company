import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Opacity(
  opacity: 0.20,
  child: Container(
    width: 362,
    height: 356,
    decoration: ShapeDecoration(
      gradient: LinearGradient(
        begin: Alignment(1.00, 0.00),
        end: Alignment(-1, 0),
        colors: [Color(0xFFE0C3FC), Color(0xFF8EC5FC)],
      ),
      shape: OvalBorder(),
    ),
  ),
)

    );
  }
}