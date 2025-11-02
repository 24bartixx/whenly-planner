import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/todo/data/models/task.dart';
import 'package:whenly_planner/features/todo/data/models/task_priority.dart';
import 'package:whenly_planner/features/todo/data/repos/task_repository.dart';

class TaskTile extends ConsumerWidget {
  const TaskTile({super.key, required this.task});

  final Task task;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              value: task.done,
              onChanged: (_) {
                ref.read(
                  updateDoneInTaskProvider(id: task.id, newDone: !task.done),
                );
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
