import 'package:flutter/material.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/home/presentation/widgets/task_tile.dart';

class SliverTasksSection extends StatelessWidget {
  SliverTasksSection({super.key});

  final mockTasks = [
    {"title": "Task 1"},
    {"title": "Task 2"},
    {"title": "Task 3"},
    {"title": "Task 3"},
    {"title": "Task 3"},
    {"title": "Task 3"},
    {"title": "Task 3"},
    {"title": "Task 3"},
    {"title": "Task 3"},
    {"title": "Task 3"},
    {"title": "Task 3"},
    {"title": "Task 3"},
    {"title": "Task 3"},
    {"title": "Task 3"},
  ];

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: AppPaddings.large),
      sliver: SliverList.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
            child: TaskTile(),
          );
        },
        itemCount: mockTasks.length,
      ),
    );
  }
}
