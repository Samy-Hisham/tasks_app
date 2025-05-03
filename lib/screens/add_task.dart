import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tasks_app/models/task_manager.dart';
import 'package:tasks_app/models/tasks_model.dart';
import 'package:tasks_app/widget/add_task_section.dart';
import 'package:tasks_app/widget/empty_list.dart';
import 'package:tasks_app/widget/tasks_list.dart';

class AddTask extends StatefulWidget {
  AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final TextEditingController titleController = TextEditingController();

  String title = '';

  final TaskManager _taskManager = TaskManager();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff9EF3E3),
          title: Text('My Task',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _taskManager.tasks.isEmpty
                ? Expanded(child: EmptyList())
                : Expanded(
                    child: TasksList(
                    taskManager: _taskManager,
                    onPressed: () {
                      if (_taskManager.tasks.isEmpty) {
                        setState(() {});
                      }
                    },
                  )),
            AddTaskSection(
              onChanged: (value) {
                title = value;
              },
              onPressed: () {
                if (title.isNotEmpty) {
                  var task = TasksModel(title, DateTime.now());
                  _taskManager.addTask(task);
                  setState(() {});
                }
                //object => tasks
                // titleController.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
