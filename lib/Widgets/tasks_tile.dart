import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String newTask;
  final Function checkBoxcallback;

  TasksTile({this.isChecked, this.newTask, this.checkBoxcallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        newTask,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.blueAccent,
        onChanged: checkBoxcallback,
      ),
    );
  }
}
