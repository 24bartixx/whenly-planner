import 'package:flutter/material.dart';
import 'package:whenly_planner/features/todo/presentation/slivers/sliver_home_app_bar.dart';
import 'package:whenly_planner/features/todo/presentation/slivers/sliver_tasks_menu_section.dart';
import 'package:whenly_planner/features/todo/presentation/slivers/sliver_tasks_section.dart';
import 'package:whenly_planner/theme/app_theme.dart';

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorTheme.surface,
      body: CustomScrollView(
        slivers: [
          SliverHomeAppBar(),
          SliverTasksMenuSection(),
          SliverTasksSection(),
        ],
      ),
    );
  }
}
