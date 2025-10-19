import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';
import 'package:whenly_planner/theme/custom_colors.dart';

part "app_color_theme.tailor.dart";

@TailorMixin()
class AppColorTheme extends ThemeExtension<AppColorTheme>
    with _$AppColorThemeTailorMixin {
  const AppColorTheme({
    this.blueLagoon = CustomColors.blueLagoon,
    this.blueLagoonLight = CustomColors.blueLagoonLight,
    this.blueLagoonDark = CustomColors.blueLagoonDarker,
    this.darkSand = CustomColors.darkSand,
    this.lightMist = CustomColors.lightMist,
  });

  @override
  final Color blueLagoon;
  @override
  final Color blueLagoonLight;
  @override
  final Color blueLagoonDark;
  @override
  final Color darkSand;
  @override
  final Color lightMist;
}
