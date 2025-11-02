import 'package:whenly_planner/features/todo/data/drift/database/app_database.dart'
    as db;
import 'package:whenly_planner/features/todo/data/models/task.dart' as model;

extension DbTaskX on db.Task {
  model.Task toModel() => model.Task(
    id: id,
    title: title,
    done: done,
    priority: priority,
    taskDdl: taskDdl,
    createdAt: createdAt,
  );
}
