import 'package:hive/hive.dart';
import 'package:tasks_app/models/tasks_model.dart';


class TaskManager {

  final Box<TasksModel> _tasksBox;

  TaskManager(this._tasksBox);


  List<TasksModel> get tasks => _tasksBox.values.toList();

  void addTask(TasksModel model) {
    _tasksBox.add(model);
  }

  void removeTask(TasksModel model) {
    _tasksBox.delete(model);
  }

  void updateTask(TasksModel model){
    _tasksBox.delete(model);
    _tasksBox.add(model);
  }
}
