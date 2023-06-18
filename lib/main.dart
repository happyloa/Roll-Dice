import 'package:flutter/material.dart';

// 引入 Gradient Container 元件
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // 使用 Gradient Container 元件並指定顏色
        body: GradientContainer(
          Colors.cyan,
          Colors.yellow,
        ),
      ),
    ),
  );
}
