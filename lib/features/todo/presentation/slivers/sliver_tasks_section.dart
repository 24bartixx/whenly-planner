import 'package:flutter/material.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/todo/data/models/task.dart';
import 'package:whenly_planner/features/todo/data/models/task_priority.dart';
import 'package:whenly_planner/features/todo/presentation/widgets/task_tile.dart';

class SliverTasksSection extends StatelessWidget {
  const SliverTasksSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Task> mockTasks = List.generate(10, (i) {
      final now = DateTime.now();
      final priorities = <TaskPriority>[
        TaskPriority.low,
        TaskPriority.medium,
        TaskPriority.high,
      ];

      return Task(
        title: 'Task #${i + 1}',
        done: i.isEven,
        priority: priorities[i % priorities.length],
        taskDdl: now.add(Duration(days: i + 1)),
        createdAt: now.subtract(Duration(hours: i * 6)),
      );
    });

    return SliverPadding(
      padding: const EdgeInsets.all(AppPaddings.large),
      sliver: SliverList.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
            child: TaskTile(task: mockTasks[index]),
          );
        },
        itemCount: mockTasks.length,
      ),
    );
  }
}
