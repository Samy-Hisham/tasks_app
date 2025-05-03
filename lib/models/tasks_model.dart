
import 'package:equatable/equatable.dart';

class TasksModel extends Equatable{
  late String title;
  late DateTime date;
  bool? isComplete ;



  TasksModel(this.title, this.date , {this.isComplete = false});

  @override
  List<Object?> get props => [title,date];

}

