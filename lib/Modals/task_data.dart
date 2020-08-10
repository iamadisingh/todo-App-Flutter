import 'package:flutter/foundation.dart';
import 'tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Study for Amazon interview'),
    Task(name: 'Complete Flutter course'),
    Task(name: 'Study German for CAT1')
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
}
