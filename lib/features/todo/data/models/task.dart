import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whenly_planner/features/todo/data/models/task_priority.dart';

part 'task.freezed.dart';

@freezed
abstract class Task with _$Task {
  const factory Task({
    required int id,
    required String title,
    required bool done,
    required TaskPriority? priority,
    required DateTime taskDdl,
    required DateTime createdAt,
  }) = _Task;
}
