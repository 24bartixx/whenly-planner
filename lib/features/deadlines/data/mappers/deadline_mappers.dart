import 'package:whenly_planner/features/drift/database/app_database.dart' as db;
import 'package:whenly_planner/features/deadlines/data/models/deadline.dart'
    as deadline_model;

extension DbDeadlineX on db.Deadline {
  deadline_model.Deadline toModel() => deadline_model.Deadline(
    id: id,
    title: title,
    isMet: isMet,
    ddl: ddl,
    createdAt: createdAt,
  );
}
