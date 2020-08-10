import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todooooo/Modals/task_data.dart';
import 'package:todooooo/Widgets/tasks_list.dart';
import 'add_tasks_screen.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 30, left: 30, right: 30),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                        color: Colors.blueAccent,
                      ),
                      backgroundColor: Colors.white,
                      radius: 25.0,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Todoey',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '${Provider.of<TaskData>(context).taskCount} Tasks',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                ),
                child: TasksList(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTasksScreen(
              (newTaskTitle) {
//                setState(() {
//                  tasks.add(Task(name: newTaskTitle));
//                });
              },
            ),
          );
        },
      ),
    );
  }
}
