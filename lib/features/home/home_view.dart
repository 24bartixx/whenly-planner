import 'package:flutter/material.dart';
import 'package:whenly_planner/features/home/widgets/sliver_choose_day.dart';
import 'package:whenly_planner/l10n/app_localizations.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final mockTasks = [
    {"title": "Task 1"},
    {"title": "Task 2"},
    {"title": "Task 3"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(AppLocalizations.of(context)!.choose_day),
            floating: true,
          ),
          SliverChooseDay(),
        ],
      ),
    );
  }
}
