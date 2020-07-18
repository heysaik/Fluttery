import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function deleteTaskCallback;

  TaskTile({
    this.isChecked,
    this.taskTitle,
    this.checkboxCallback,
    this.deleteTaskCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.deepPurpleAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: deleteTaskCallback,
    );
  }
}
