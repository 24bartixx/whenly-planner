import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:whenly_planner/features/todo/data/drift/tables/tasks.dart';
import 'package:path_provider/path_provider.dart';
import 'package:whenly_planner/features/todo/data/models/task_priority.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Tasks])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'whenly_database',
      native: const DriftNativeOptions(
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }
}
