import 'package:flutter/material.dart';
import "package:theme_tailor_annotation/theme_tailor_annotation.dart";
import 'package:whenly_planner/theme/text_styles.dart';

part "app_text_theme.tailor.dart";

@TailorMixin()
class AppTextTheme extends ThemeExtension<AppTextTheme>
    with _$AppTextThemeTailorMixin {
  const AppTextTheme({
    this.displayLargeDark = const BoldDarkTextStyle(fontSize: 32),
    this.displayMediumDark = const BoldDarkTextStyle(fontSize: 28),
    this.displaySmallDark = const BoldDarkTextStyle(fontSize: 24),
    this.headlineLargeDark = const BoldDarkTextStyle(fontSize: 20),
    this.headlineMediumDark = const BoldDarkTextStyle(fontSize: 18),
    this.headlineSmallDark = const BoldDarkTextStyle(fontSize: 16),
    this.titleLargeDark = const SemiBoldDarkTextStyle(fontSize: 18),
    this.titleMediumDark = const SemiBoldDarkTextStyle(fontSize: 16),
    this.titleSmallDark = const SemiBoldDarkTextStyle(fontSize: 14),
    this.bodyLargeDark = const NormalDarkTextStyle(fontSize: 16),
    this.bodyMediumDark = const NormalDarkTextStyle(fontSize: 14),
    this.bodySmallDark = const NormalDarkTextStyle(fontSize: 12),
    this.displayLargeLight = const BoldLightTextStyle(fontSize: 32),
    this.displayMediumLight = const BoldLightTextStyle(fontSize: 28),
    this.displaySmallLight = const BoldLightTextStyle(fontSize: 24),
    this.headlineLargeLight = const BoldLightTextStyle(fontSize: 20),
    this.headlineMediumLight = const BoldLightTextStyle(fontSize: 18),
    this.headlineSmallLight = const BoldLightTextStyle(fontSize: 16),
    this.titleLargeLight = const SemiBoldLightTextStyle(fontSize: 18),
    this.titleMediumLight = const SemiBoldLightTextStyle(fontSize: 16),
    this.titleSmallLight = const SemiBoldLightTextStyle(fontSize: 14),
    this.bodyLargeLight = const NormalLightTextStyle(fontSize: 16),
    this.bodyMediumLight = const NormalLightTextStyle(fontSize: 14),
    this.bodySmallLight = const NormalLightTextStyle(fontSize: 12),
  });

  @override
  final TextStyle displaySmallDark;
  @override
  final TextStyle displayMediumDark;
  @override
  final TextStyle displayLargeDark;

  @override
  final TextStyle headlineSmallDark;
  @override
  final TextStyle headlineMediumDark;
  @override
  final TextStyle headlineLargeDark;

  @override
  final TextStyle titleSmallDark;
  @override
  final TextStyle titleMediumDark;
  @override
  final TextStyle titleLargeDark;

  @override
  final TextStyle bodySmallDark;
  @override
  final TextStyle bodyMediumDark;
  @override
  final TextStyle bodyLargeDark;

  @override
  final TextStyle displaySmallLight;
  @override
  final TextStyle displayMediumLight;
  @override
  final TextStyle displayLargeLight;

  @override
  final TextStyle headlineSmallLight;
  @override
  final TextStyle headlineMediumLight;
  @override
  final TextStyle headlineLargeLight;

  @override
  final TextStyle titleSmallLight;
  @override
  final TextStyle titleMediumLight;
  @override
  final TextStyle titleLargeLight;

  @override
  final TextStyle bodySmallLight;
  @override
  final TextStyle bodyMediumLight;
  @override
  final TextStyle bodyLargeLight;
}
