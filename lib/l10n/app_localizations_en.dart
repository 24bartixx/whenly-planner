// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get home_choose_day => 'Choose day';

  @override
  String get home_tasks_for_day => 'Tasks for the day';

  @override
  String get search_task => 'Search task';

  @override
  String get priority_low => 'Low';

  @override
  String get priority_medium => 'Medium';

  @override
  String get priority_high => 'High';

  @override
  String get add_task => 'Add task';

  @override
  String get task_priority => 'Task priority';

  @override
  String get new_task_done_label => 'Mark the task as done';
}
