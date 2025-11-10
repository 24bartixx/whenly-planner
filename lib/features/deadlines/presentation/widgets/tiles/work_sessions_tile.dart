import 'package:flutter/material.dart';
import 'package:whenly_planner/features/work_sessions/data/models/work_session.dart';
import 'package:whenly_planner/utils/date_extensions.dart';

class WorkSessionsTile extends StatelessWidget {
  const WorkSessionsTile({super.key, required this.workSession});

  final WorkSession workSession;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text.rich(
            workSession.startDate.toTileText(),
            textAlign: TextAlign.center,
          ),
        ),
        Icon(Icons.keyboard_arrow_right),
        Expanded(
          child: Text.rich(
            workSession.endDate.toTileText(),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
