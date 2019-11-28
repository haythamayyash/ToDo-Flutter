class Task {
  Task({this.title, this.isDone});

  String title;
  bool isDone = false;
  bool toggleIsDone(bool isDone){
    this.isDone = isDone;
    return isDone;
  }
}
