import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todooooo/Modals/task_data.dart';
import 'Screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
