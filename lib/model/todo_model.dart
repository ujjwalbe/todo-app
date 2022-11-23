import 'package:tasker_todo/model/task.dart';

class Todo {

  Todo({required this.details, required this.done, required this.title});
  late String title;
  late String details;
  late bool done = false;
  late Task task;
  Todo.fromJson(Map<String, dynamic>parsedJson)
  :title = parsedJson['title'],
  details = parsedJson['details'],
  done = parsedJson['done'],
  task = parsedJson['task'];

}

