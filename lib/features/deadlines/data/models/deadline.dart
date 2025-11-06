import 'package:freezed_annotation/freezed_annotation.dart';

part 'deadline.freezed.dart';

@freezed
abstract class Deadline with _$Deadline {
  const factory Deadline({
    required int id,
    required String title,
    required bool isMet,
    required DateTime ddl,
    required DateTime createdAt,
  }) = _Deadline;
}
