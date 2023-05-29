import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_iug/views/screens/all_tasks_screen.dart';
import 'package:todo_iug/views/screens/complete_tasks.dart';
import 'package:todo_iug/views/screens/incomplete_tasks.dart';
import 'package:todo_iug/views/screens/responsive_design/large_screens.dart';
import 'package:todo_iug/views/screens/responsive_design/small_screens.dart';

class MainTasksScreen extends StatefulWidget {
  @override
  State<MainTasksScreen> createState() => _MainTasksScreenState();
}

class _MainTasksScreenState extends State<MainTasksScreen> {
  PageController pageController = PageController();

  int pageIndex = 0;
  updateScreen() {
    log('set state from main screen has been excuted');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MediaQuery.of(context).size.width < 500
        ? SmallScreen(updateScreen)
        : LargeScreen(updateScreen);
  }
}
