import 'package:flutter/material.dart';
import 'package:todooooo/Modals/task_data.dart';
import 'package:todooooo/Widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TasksTile(
              newTask: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkBoxcallback: (bool checkboxState) => {
//            setState(() {
//              Provider.of<TaskData>(context).tasks[index].toggleDone();
//            })
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
