import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/deadlines/data/models/deadline.dart';
import 'package:whenly_planner/features/deadlines/data/repos/deadlines_repository.dart';

class DeadlineTile extends ConsumerWidget {
  const DeadlineTile({super.key, required this.deadline});

  final Deadline deadline;

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
              value: deadline.isMet,
              onChanged: (_) {
                ref.read(
                  updateIsMetInDeadlineProvider(
                    id: deadline.id,
                    newIsMet: !deadline.isMet,
                  ),
                );
              },
            ),
            Text(deadline.title),
          ],
        ),
      ),
    );
  }
}
