import 'task.dart';
class Todo {

  Todo({this.details, this.done, this.title});
  String title;
  String details;
  bool done = false;
  Task task;
  Todo.fromJson(Map<String, dynamic>parsedJson)
  :title = parsedJson['title'],
  details = parsedJson['details'],
  done = parsedJson['done'],
  task = parsedJson['task'];

}

