import 'package:flutter/material.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/home/widgets/sliver_choose_day.dart';
import 'package:whenly_planner/features/home/widgets/task_tile.dart';
import 'package:whenly_planner/utils/context_extensions.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final mockTasks = [
    {"title": "Task 1"},
    {"title": "Task 2"},
    {"title": "Task 3"},
    {"title": "Task 3"},
    {"title": "Task 3"},
    {"title": "Task 3"},
    {"title": "Task 3"},
    {"title": "Task 3"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPaddings.large),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text(context.l10n.home_choose_day),
              centerTitle: false,
              floating: true,
            ),
            SliverChooseDay(),
            SliverToBoxAdapter(child: Text(context.l10n.home_tasks_for_day)),
            SliverList.builder(
              itemBuilder: (BuildContext context, int index) {
                return TaskTile();
              },
              itemCount: mockTasks.length,
            ),
          ],
        ),
      ),
    );
  }
}
