import 'package:flutter/material.dart';
import 'screen1_task.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Screen1Task());
  }
}
