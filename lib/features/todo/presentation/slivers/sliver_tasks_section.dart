import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/todo/data/models/task.dart';
import 'package:whenly_planner/features/todo/data/repos/task_repository.dart';
import 'package:whenly_planner/features/todo/presentation/widgets/task_tile.dart';
import 'package:whenly_planner/utils/context_extensions.dart';

class SliverTasksSection extends ConsumerWidget {
  const SliverTasksSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(watchDayTasksProvider(day: DateTime(2025, 11, 2)));

    return switch (tasks) {
      AsyncData(value: final tasksValue) => _sliverContent(tasksValue, context),
      AsyncLoading() => _loadingSliver(),
      AsyncError(:final error, :final stackTrace) => _errorSliver(
        error,
        stackTrace,
      ),
    };
  }

  Widget _sliverContent(List<Task> tasks, BuildContext context) {
    if (tasks.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: Center(child: Text(context.l10n.no_tasks_for_day)),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.all(AppPaddings.large),
      sliver: SliverList.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
            child: TaskTile(task: tasks[index]),
          );
        },
        itemCount: tasks.length,
      ),
    );
  }

  // TODO: custom loading
  Widget _loadingSliver() => const SliverFillRemaining(
    hasScrollBody: false,
    child: Center(child: CircularProgressIndicator()),
  );

  // TODO: custom error
  Widget _errorSliver(Object error, StackTrace stack) => SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.all(AppPaddings.large),
      child: Text(
        'Wystąpił błąd: $error',
        style: const TextStyle(color: Colors.red),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
