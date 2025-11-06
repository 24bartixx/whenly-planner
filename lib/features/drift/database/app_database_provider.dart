import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whenly_planner/features/drift/database/app_database.dart';

part "app_database_provider.g.dart";

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  final appDatabase = AppDatabase();
  ref.onDispose(appDatabase.close);
  return appDatabase;
}
