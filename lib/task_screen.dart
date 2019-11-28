import 'package:flutter/material.dart';
import 'package:todo_app/task_list_container.dart';

import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.list,
                          size: 25,
                          color: Colors.lightGreen,
                        ),
                        radius: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'ToDo',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                      Text(
                        '2 tasks',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
                TaskListContainer(),
              ]),
        ),
      ),
    );
  }
}
