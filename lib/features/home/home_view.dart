import 'package:flutter/material.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/home/widgets/sliver_home_app_bar.dart';
import 'package:whenly_planner/features/home/widgets/task_tile.dart';
import 'package:whenly_planner/theme/app_theme.dart';
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
      backgroundColor: context.colorTheme.lightMist,
      body: CustomScrollView(
        slivers: [
          SliverHomeAppBar(),
          SliverPadding(
            padding: EdgeInsets.only(
              top: AppPaddings.large,
              bottom: AppPaddings.medium,
              left: AppPaddings.large,
              right: AppPaddings.large,
            ),
            sliver: SliverToBoxAdapter(
              child: Text(
                context.l10n.home_tasks_for_day,
                style: context.textTheme.headlineMediumDark,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: AppPaddings.large),
            sliver: SliverList.builder(
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppPaddings.tiny,
                  ),
                  child: TaskTile(),
                );
              },
              itemCount: mockTasks.length,
            ),
          ),
        ],
      ),
    );
  }
}
