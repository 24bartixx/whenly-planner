import 'package:drift/drift.dart';
import 'package:whenly_planner/features/todo/data/models/task_priority.dart';

class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  BoolColumn get done => boolean().withDefault(const Constant(false))();
  TextColumn get priority => textEnum<TaskPriority>().nullable()();
  DateTimeColumn get taskDdl => dateTime()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}
