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
  String get home_deadlines_for_day => 'Deadlines for the day';

  @override
  String get search_deadline => 'Search deadline';

  @override
  String get priority_low => 'Low';

  @override
  String get priority_medium => 'Medium';

  @override
  String get priority_high => 'High';

  @override
  String get add_deadline => 'Add deadline';

  @override
  String get task_priority => 'Task priority';

  @override
  String get new_deadline_met_label => 'Mark the deadline as met';

  @override
  String get no_deadlines_for_day => 'No deadlines for this day';

  @override
  String get popup_edit => 'Edit';

  @override
  String get popup_delete => 'Delete';
}
