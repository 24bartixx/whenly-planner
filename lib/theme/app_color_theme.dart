import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';
import 'package:whenly_planner/theme/custom_colors.dart';

part "app_color_theme.tailor.dart";

@TailorMixin()
class AppColorTheme extends ThemeExtension<AppColorTheme>
    with _$AppColorThemeTailorMixin {
  const AppColorTheme({
    this.violet = CustomColors.violet,
    this.violetLight = CustomColors.violetLight,
    this.violetDark = CustomColors.violetDark,
    this.darkSand = CustomColors.darkSand,
    this.lightMist = CustomColors.lightMist,
    this.lightGrey = CustomColors.lightGrey,
  });

  @override
  final Color violet;
  @override
  final Color violetLight;
  @override
  final Color violetDark;
  @override
  final Color darkSand;
  @override
  final Color lightMist;
  @override
  final Color lightGrey;
}
