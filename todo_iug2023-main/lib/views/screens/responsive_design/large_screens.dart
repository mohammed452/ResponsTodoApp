import 'package:flutter/material.dart';
import 'package:todo_iug/views/screens/all_tasks_screen.dart';
import 'package:todo_iug/views/screens/complete_tasks.dart';
import 'package:todo_iug/views/screens/incomplete_tasks.dart';

class LargeScreen extends StatelessWidget {
  Function function;
  LargeScreen(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo App"),
      ),
      body: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              ListTile(
                title: Text("All Tasks", style: const TextStyle(fontSize: 17)),
                trailing: const Icon(Icons.arrow_forward_ios),
                leading: const Icon(
                  Icons.list,
                  size: 27,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => AllTasksScreen(function))));
                },
              ),
              ListTile(
                title: Text("Complete Tasks",
                    style: const TextStyle(fontSize: 17)),
                trailing: const Icon(Icons.arrow_forward_ios),
                leading: const Icon(
                  Icons.done,
                  size: 27,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              CompleteTasksScreen(function))));
                },
              ),
              ListTile(
                title: Text("InComplete Tasks",
                    style: const TextStyle(fontSize: 17)),
                trailing: const Icon(Icons.cancel),
                leading: const Icon(
                  Icons.home,
                  size: 27,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              InCompleteTasksScreen(function))));
                },
              ),
            ],
          )),
          Expanded(
            child: Center(
              child: AllTasksScreen(function),
            ),
          ),
        ],
      ),
    );
  }
}
