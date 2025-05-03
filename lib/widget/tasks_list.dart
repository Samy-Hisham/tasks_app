import 'package:flutter/material.dart';
import 'package:tasks_app/models/task_manager.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
    required this.taskManager,
    this.onPressed,
  });

  final TaskManager taskManager;
  final void Function()? onPressed;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: widget.taskManager.tasks.length,
        itemBuilder: (context, index) {
          var task = widget.taskManager.tasks[index];
          return ListTile(
            leading: Checkbox(
                value: task.isComplete,
                onChanged: (value) {
                  //bug
                  task.isComplete = value ?? false;
                  widget.taskManager.updateTask(task);
                  setState(() {});
                }),
            title: Text(task.title),
            trailing: IconButton(
                onPressed: () {
                  widget.taskManager.removeTask(task);
                  setState(() {});
                  widget.onPressed?.call();
                },
                icon: const Icon(Icons.delete)),
          );
        },
      ),
    );
  }
}
