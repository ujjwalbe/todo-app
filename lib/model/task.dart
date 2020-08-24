class Task {
  Task({this.details, this.done, this.title});
  String title;
  String details;
  bool done =false;

  Task.fromJson(Map<String, dynamic>parsedJson)
  :title = parsedJson['title'],
  details = parsedJson['details'],
  done = parsedJson['done'];
}