import 'package:flutter/material.dart';
import 'package:whenly_planner/features/todo/data/models/task_priority.dart';
import 'package:whenly_planner/theme/app_theme.dart';

class PriorityRadioButton extends StatelessWidget {
  const PriorityRadioButton({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final TaskPriority value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        RadioGroup.maybeOf<TaskPriority>(context)?.onChanged(value);
      },
      child: Row(
        children: <Widget>[
          Radio<TaskPriority>(
            value: value,
            activeColor: context.colorTheme.secondary,
          ),
          Text(label),
        ],
      ),
    );
  }
}
