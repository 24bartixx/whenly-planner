import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whenly_planner/common/widgets/custom_filled_button.dart';
import 'package:whenly_planner/common/widgets/custom_text_field.dart';
import 'package:whenly_planner/config/ui_config.dart';
import 'package:whenly_planner/features/todo/data/models/task_priority.dart';
import 'package:whenly_planner/features/todo/data/repos/task_repository.dart';
import 'package:whenly_planner/features/todo/presentation/widgets/add_task/priority_radio_button.dart';
import 'package:whenly_planner/theme/app_theme.dart';
import 'package:whenly_planner/utils/context_extensions.dart';

class AddTaskBottomSheet extends ConsumerStatefulWidget {
  const AddTaskBottomSheet({super.key});

  @override
  ConsumerState<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends ConsumerState<AddTaskBottomSheet> {
  final _titleController = TextEditingController();

  // state
  TaskPriority? _priority = TaskPriority.medium;
  bool _isDone = false;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final bottomInset = mediaQuery.viewInsets.bottom;

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: mediaQuery.size.height * 0.9),
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: AppPaddings.large,
          right: AppPaddings.large,
          top: AppPaddings.huge,
          bottom: bottomInset + AppPaddings.huge,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              context.l10n.add_task,
              style: context.textTheme.titleLargeDark,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            CustomTextField(
              text: "Title",
              icon: null,
              controller: _titleController,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: AppPaddings.medium),
              child: Text(
                context.l10n.task_priority,
                style: context.textTheme.titleMediumDark,
              ),
            ),
            SizedBox(height: 4),
            RadioGroup<TaskPriority>(
              groupValue: _priority,
              onChanged: (TaskPriority? newTaskPriority) {
                setState(() {
                  _priority = newTaskPriority;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: AppPaddings.large),
                child: Column(
                  children: [
                    PriorityRadioButton(
                      label: context.l10n.priority_high,
                      value: TaskPriority.high,
                    ),
                    PriorityRadioButton(
                      label: context.l10n.priority_medium,
                      value: TaskPriority.medium,
                    ),
                    PriorityRadioButton(
                      label: context.l10n.priority_low,
                      value: TaskPriority.low,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            CheckboxListTile(
              title: Text(context.l10n.new_task_done_label),
              value: _isDone,
              activeColor: context.colorTheme.secondary,
              onChanged: (bool? v) => setState(() => _isDone = v ?? false),
            ),
            SizedBox(height: 12),
            CustomFilledButton(
              onPressed: _addTask,
              child: Text(context.l10n.add_task),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _addTask() async {
    final title = _titleController.text.trim();
    debugPrint("title: $title");
    if (title.isEmpty) {
      // some action to inform
      return;
    }

    await ref.read(
      insertTaskProvider(
        title: title,
        done: _isDone,
        priority: _priority,
        taskDdl: DateTime.now(),
      ).future,
    );

    if (mounted) Navigator.of(context).pop(true);
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }
}
