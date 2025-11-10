import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/deadlines/data/models/deadline.dart';
import 'package:whenly_planner/features/deadlines/data/repos/deadlines_repository.dart';
import 'package:whenly_planner/features/deadlines/presentation/widgets/deadline_tile.dart';
import 'package:whenly_planner/utils/context_extensions.dart';

class SliverDeadlinesSection extends ConsumerWidget {
  const SliverDeadlinesSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final today = DateUtils.dateOnly(DateTime.now());
    debugPrint("today: $today");
    final deadlines = ref.watch(watchDayDeadlinesProvider(day: today));

    return switch (deadlines) {
      AsyncData(value: final deadlinesValue) => _sliverContent(
        deadlinesValue,
        context,
      ),
      AsyncLoading() => _loadingSliver(),
      AsyncError(:final error, :final stackTrace) => _errorSliver(
        error,
        stackTrace,
      ),
    };
  }

  Widget _sliverContent(List<Deadline> deadlines, BuildContext context) {
    if (deadlines.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: Center(child: Text(context.l10n.no_deadlines_for_day)),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.all(AppPaddings.large),
      sliver: SliverList.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: AppPaddings.tiny),
            child: DeadlineTile(deadline: deadlines[index]),
          );
        },
        itemCount: deadlines.length,
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
