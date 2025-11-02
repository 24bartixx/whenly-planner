import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whenly_planner/features/todo/data/drift/database/app_database.dart'
    hide Task;
import 'package:whenly_planner/features/todo/data/drift/database/app_database_provider.dart';
import 'package:whenly_planner/features/todo/data/mappers/task_mappers.dart';
import 'package:whenly_planner/features/todo/data/models/task.dart' as model;
import 'package:whenly_planner/features/todo/data/models/task_priority.dart';

part 'task_repository.g.dart';

@riverpod
Future<void> insertTask(
  Ref ref, {
  required String title,
  bool done = false,
  TaskPriority? priority,
  required DateTime taskDdl,
}) async {
  final database = ref.read(appDatabaseProvider);

  await database
      .into(database.tasks)
      .insert(
        TasksCompanion.insert(
          title: title,
          done: Value(done),
          priority: Value(priority),
          taskDdl: taskDdl,
        ),
      );
}

@riverpod
Stream<List<model.Task>> watchDayTasks(Ref ref, {required DateTime day}) {
  final database = ref.read(appDatabaseProvider);

  final start = DateTime(day.year, day.month, day.day);
  final end = start.add(const Duration(days: 1));

  final query = database.select(database.tasks)
    ..where(
      (task) =>
          task.taskDdl.isBiggerOrEqualValue(start) &
          task.taskDdl.isSmallerThanValue(end),
    );

  return query.watch().map(
    (dbTasksList) => dbTasksList.map((dbTask) => dbTask.toModel()).toList(),
  );
}
