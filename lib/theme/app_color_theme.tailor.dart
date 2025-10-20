// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_color_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppColorThemeTailorMixin on ThemeExtension<AppColorTheme> {
  Color get violet;
  Color get violetLight;
  Color get violetDark;
  Color get darkSand;
  Color get lightMist;
  Color get lightGrey;

  @override
  AppColorTheme copyWith({
    Color? violet,
    Color? violetLight,
    Color? violetDark,
    Color? darkSand,
    Color? lightMist,
    Color? lightGrey,
  }) {
    return AppColorTheme(
      violet: violet ?? this.violet,
      violetLight: violetLight ?? this.violetLight,
      violetDark: violetDark ?? this.violetDark,
      darkSand: darkSand ?? this.darkSand,
      lightMist: lightMist ?? this.lightMist,
      lightGrey: lightGrey ?? this.lightGrey,
    );
  }

  @override
  AppColorTheme lerp(covariant ThemeExtension<AppColorTheme>? other, double t) {
    if (other is! AppColorTheme) return this as AppColorTheme;
    return AppColorTheme(
      violet: Color.lerp(violet, other.violet, t)!,
      violetLight: Color.lerp(violetLight, other.violetLight, t)!,
      violetDark: Color.lerp(violetDark, other.violetDark, t)!,
      darkSand: Color.lerp(darkSand, other.darkSand, t)!,
      lightMist: Color.lerp(lightMist, other.lightMist, t)!,
      lightGrey: Color.lerp(lightGrey, other.lightGrey, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColorTheme &&
            const DeepCollectionEquality().equals(violet, other.violet) &&
            const DeepCollectionEquality().equals(
              violetLight,
              other.violetLight,
            ) &&
            const DeepCollectionEquality().equals(
              violetDark,
              other.violetDark,
            ) &&
            const DeepCollectionEquality().equals(darkSand, other.darkSand) &&
            const DeepCollectionEquality().equals(lightMist, other.lightMist) &&
            const DeepCollectionEquality().equals(lightGrey, other.lightGrey));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(violet),
      const DeepCollectionEquality().hash(violetLight),
      const DeepCollectionEquality().hash(violetDark),
      const DeepCollectionEquality().hash(darkSand),
      const DeepCollectionEquality().hash(lightMist),
      const DeepCollectionEquality().hash(lightGrey),
    );
  }
}

extension AppColorThemeBuildContextProps on BuildContext {
  AppColorTheme get appColorTheme => Theme.of(this).extension<AppColorTheme>()!;
  Color get violet => appColorTheme.violet;
  Color get violetLight => appColorTheme.violetLight;
  Color get violetDark => appColorTheme.violetDark;
  Color get darkSand => appColorTheme.darkSand;
  Color get lightMist => appColorTheme.lightMist;
  Color get lightGrey => appColorTheme.lightGrey;
}
