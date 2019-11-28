import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({this.onAddTaskClick});

  final Function onAddTaskClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            'New Task',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.lightGreen,
                fontSize: 30,
                fontStyle: FontStyle.normal),
          ),
          TextField(),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  child: Text(
                    'Add',
                  ),
                  onPressed: onAddTaskClick,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
