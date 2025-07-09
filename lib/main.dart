import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tasks_app/pages/home_page.dart';

import 'models/tasks_model.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TasksModelAdapter());
  await Hive.openBox<TasksModel>('tasks');

  runApp( HomePage());
}
