import 'package:flutter/material.dart';
import 'package:whenly_planner/utils/context_extensions.dart';

enum TaskPriority { low, medium, high }

extension TaskPriorityX on TaskPriority {
  String label(BuildContext context) {
    switch (this) {
      case TaskPriority.low:
        return context.l10n.priority_low;
      case TaskPriority.medium:
        return context.l10n.priority_medium;
      case TaskPriority.high:
        return context.l10n.priority_high;
    }
  }
}
