import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';
import 'package:whenly_planner/theme/custom_colors.dart';

part "app_color_theme.tailor.dart";

@TailorMixin()
class AppColorTheme extends ThemeExtension<AppColorTheme>
    with _$AppColorThemeTailorMixin {
  const AppColorTheme({
    this.primary = CustomColors.violetDark,
    this.primaryContainer = CustomColors.violetLight,
    this.onPrimary = CustomColors.whiteOwl,
    this.secondary = CustomColors.coralBloomDark,
    this.secondaryContainer = CustomColors.coralBloom,
    this.surface = CustomColors.whiteOwl,
    this.surfaceContainerLowest = CustomColors.white,
    this.onSurface = CustomColors.darkSand,
  });

  @override
  final Color primary;
  @override
  final Color primaryContainer;
  @override
  final Color onPrimary;

  @override
  final Color secondary;
  @override
  final Color secondaryContainer;

  @override
  final Color surface;
  @override
  final Color surfaceContainerLowest;
  @override
  final Color onSurface;
}
