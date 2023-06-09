import 'package:flutter/material.dart';
import 'package:todo_iug/data/data_source.dart';
import 'package:todo_iug/views/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function fun;
  AllTasksScreen(this.fun);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height / 1.1,
        child: ListView.builder(
            itemCount: DataSource.tasks.length,
            itemBuilder: (context, index) {
              return TaskWidget(DataSource.tasks[index], fun);
            }),
      ),
    );
  }
}
