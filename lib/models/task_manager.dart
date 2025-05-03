import 'package:tasks_app/models/tasks_model.dart';

class TaskManager {
  final List<TasksModel> _tasks = [];

  List<TasksModel> get tasks => _tasks;

  void addTask(TasksModel model) {
    _tasks.add(model);
  }

  void removeTask(TasksModel model) {
    // if( index > 0 && index < tasks.length){
    //   tasks.removeAt(index);
    // }
    _tasks.remove(model);
  }

  void updateTask(TasksModel model){
    _tasks.remove(model);
    _tasks.add(model);
  }
}
