import 'package:flutter/material.dart';
import 'package:todo_app/task.dart';
import 'package:todo_app/task_list_tile.dart';

List<Task> taskList = [
  Task(title: 'aa', isDone: false),
  Task(title: 'ddd', isDone: false),
  Task(title: 'afdssaf'),
];

class TaskListContainer extends StatefulWidget {
  @override
  _TaskListContainerState createState() => _TaskListContainerState();
}

class _TaskListContainerState extends State<TaskListContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return TaskListTile(
              taskList[index].title,
              onCheckBoxChangedCallBack: (isDone) {
                setState(() {
                   taskList[index].toggleIsDone(isDone);
                }
                );
              },
              isDone: taskList[index].isDone,
            );
          },
          itemCount: taskList.length,
        ),
      ),
    );
  }
}
