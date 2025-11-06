import 'package:flutter/material.dart';
import 'package:whenly_planner/features/deadlines/presentation/slivers/sliver_home_app_bar.dart';
import 'package:whenly_planner/features/deadlines/presentation/slivers/sliver_deadlines_menu_section.dart';
import 'package:whenly_planner/features/deadlines/presentation/slivers/sliver_deadlines_section.dart';
import 'package:whenly_planner/theme/app_theme.dart';

class DeadlinesView extends StatelessWidget {
  const DeadlinesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorTheme.surface,
      body: CustomScrollView(
        slivers: [
          SliverHomeAppBar(),
          SliverDeadlinesMenuSection(),
          SliverDeadlinesSection(),
        ],
      ),
    );
  }
}
