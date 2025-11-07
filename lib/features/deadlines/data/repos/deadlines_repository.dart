import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whenly_planner/features/drift/database/app_database.dart';
import 'package:whenly_planner/features/drift/database/app_database_provider.dart';
import 'package:whenly_planner/features/deadlines/data/mappers/deadline_mappers.dart';
import 'package:whenly_planner/features/deadlines/data/models/deadline.dart'
    as model;

part 'deadlines_repository.g.dart';

@riverpod
Future<void> insertDeadline(
  Ref ref, {
  required String title,
  bool isMet = false,
  required DateTime ddl,
}) async {
  final database = ref.read(appDatabaseProvider);

  await database
      .into(database.deadlines)
      .insert(
        DeadlinesCompanion.insert(title: title, isMet: Value(isMet), ddl: ddl),
      );
}

@riverpod
Stream<List<model.Deadline>> watchDayDeadlines(
  Ref ref, {
  required DateTime day,
}) {
  final database = ref.read(appDatabaseProvider);

  final start = DateTime(day.year, day.month, day.day);
  final end = start.add(const Duration(days: 1));

  final query = database.select(database.deadlines)
    ..where(
      (deadline) =>
          deadline.ddl.isBiggerOrEqualValue(start) &
          deadline.ddl.isSmallerThanValue(end),
    );

  return query.watch().map(
    (dbDeadlinesList) =>
        dbDeadlinesList.map((dbDeadline) => dbDeadline.toModel()).toList(),
  );
}

@riverpod
Future<void> updateIsMetInDeadline(
  Ref ref, {
  required int id,
  required bool newIsMet,
}) async {
  final database = ref.read(appDatabaseProvider);

  await (database.update(database.deadlines)
        ..where((deadline) => deadline.id.equals(id)))
      .write(const DeadlinesCompanion().copyWith(isMet: Value(newIsMet)));
}

@riverpod
Future<void> deleteDeadline(Ref ref, {required int id}) async {
  final database = ref.read(appDatabaseProvider);

  await (database.delete(
    database.deadlines,
  )..where((deadline) => deadline.id.equals(id))).go();
}
