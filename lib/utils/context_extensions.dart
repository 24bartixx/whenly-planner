import 'package:flutter/material.dart';
import 'package:whenly_planner/l10n/app_localizations.dart';
import 'package:whenly_planner/l10n/app_localizations_en.dart';

extension BuildContextX on BuildContext {
  AppLocalizations get l10n {
    return AppLocalizations.of(this) ?? AppLocalizationsEn();
  }
}
