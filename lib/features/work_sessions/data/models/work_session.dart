import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_session.freezed.dart';

@freezed
abstract class WorkSession with _$WorkSession {
  const factory WorkSession({
    required int id,
    required DateTime startDate,
    required DateTime endDate,
  }) = _WorkSession;
}
