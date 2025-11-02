import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whenly_planner/features/todo/data/drift/database/app_database.dart';
import 'package:whenly_planner/features/todo/data/drift/database/app_database_provider.dart';
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
