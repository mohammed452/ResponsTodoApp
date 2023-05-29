import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_iug/views/screens/main_tasks_screen.dart';

void main() {
  runApp(const name());
}

class name extends StatelessWidget {
  const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainTasksScreen(),
    );
  }
}
