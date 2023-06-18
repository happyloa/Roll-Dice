import 'package:flutter/material.dart';

// 引入 Gradient Container 元件
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Colors.cyan,
          Colors.yellow,
        ),
      ),
    ),
  );
}
