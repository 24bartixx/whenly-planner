import 'package:drift/drift.dart';

class Deadlines extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  BoolColumn get isMet => boolean().withDefault(const Constant(false))();
  DateTimeColumn get ddl => dateTime()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}
