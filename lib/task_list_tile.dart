import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  final String title;
  final bool isDone;
  final Function onCheckBoxChangedCallBack;

  TaskListTile(this.title, {this.isDone, this.onCheckBoxChangedCallBack});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(left: 14,right: 14),
      child: ListTile(
        leading: Text(title,
            style: isDone ?? false
                ? TextStyle(decoration: TextDecoration.lineThrough)
                : null
        ),
        trailing: Checkbox(
          value: isDone ?? false,
          onChanged: onCheckBoxChangedCallBack,
        ),
      ),
    );
  }
}
