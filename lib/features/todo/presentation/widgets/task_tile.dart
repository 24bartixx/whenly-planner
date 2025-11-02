import 'package:flutter/material.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/todo/data/models/task.dart';
import 'package:whenly_planner/features/todo/data/models/task_priority.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key, required this.task});

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadiuses.large),
      ),
      child: ListTile(
        title: Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (_) {
                debugPrint("changed");
              },
            ),
            Text(task.title),
            Spacer(),
            Text(task.priority?.label(context) ?? ""),
          ],
        ),
      ),
    );
  }
}
