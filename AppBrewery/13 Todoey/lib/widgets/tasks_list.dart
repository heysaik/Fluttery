import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final taskItem = taskData.tasks[index];
            return TaskTile(
              taskTitle: taskItem.name,
              isChecked: taskItem.isDone,
              checkboxCallback: (bool checkboxState) {
                taskData.updateTask(taskItem);
              },
              deleteTaskCallback: () {
                taskData.deleteTask(taskItem);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
