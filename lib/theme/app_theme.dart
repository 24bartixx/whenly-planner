import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';
import 'package:whenly_planner/theme/app_text_theme.dart';

part "app_theme.tailor.dart";

@TailorMixin()
class AppTheme extends ThemeExtension<AppTheme> with _$AppThemeTailorMixin {
  const AppTheme({this.textTheme = const AppTextTheme()});

  @override
  final AppTextTheme textTheme;
}
