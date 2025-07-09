
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
part 'tasks_model.g.dart';

@HiveType(typeId: 0)
class TasksModel extends Equatable {
  @HiveField(0)
   final String title;
  @HiveField(1)
  final DateTime date;
  @HiveField(2)
  bool? isComplete ;

  TasksModel(this.title, this.date , {this.isComplete = false});

  @override
  List<Object?> get props => [title,date];

}