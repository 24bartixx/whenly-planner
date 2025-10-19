// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_color_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppColorThemeTailorMixin on ThemeExtension<AppColorTheme> {
  Color get blueLagoon;
  Color get blueLagoonLight;
  Color get blueLagoonDark;
  Color get darkSand;
  Color get lightMist;

  @override
  AppColorTheme copyWith({
    Color? blueLagoon,
    Color? blueLagoonLight,
    Color? blueLagoonDark,
    Color? darkSand,
    Color? lightMist,
  }) {
    return AppColorTheme(
      blueLagoon: blueLagoon ?? this.blueLagoon,
      blueLagoonLight: blueLagoonLight ?? this.blueLagoonLight,
      blueLagoonDark: blueLagoonDark ?? this.blueLagoonDark,
      darkSand: darkSand ?? this.darkSand,
      lightMist: lightMist ?? this.lightMist,
    );
  }

  @override
  AppColorTheme lerp(covariant ThemeExtension<AppColorTheme>? other, double t) {
    if (other is! AppColorTheme) return this as AppColorTheme;
    return AppColorTheme(
      blueLagoon: Color.lerp(blueLagoon, other.blueLagoon, t)!,
      blueLagoonLight: Color.lerp(blueLagoonLight, other.blueLagoonLight, t)!,
      blueLagoonDark: Color.lerp(blueLagoonDark, other.blueLagoonDark, t)!,
      darkSand: Color.lerp(darkSand, other.darkSand, t)!,
      lightMist: Color.lerp(lightMist, other.lightMist, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColorTheme &&
            const DeepCollectionEquality().equals(
              blueLagoon,
              other.blueLagoon,
            ) &&
            const DeepCollectionEquality().equals(
              blueLagoonLight,
              other.blueLagoonLight,
            ) &&
            const DeepCollectionEquality().equals(
              blueLagoonDark,
              other.blueLagoonDark,
            ) &&
            const DeepCollectionEquality().equals(darkSand, other.darkSand) &&
            const DeepCollectionEquality().equals(lightMist, other.lightMist));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(blueLagoon),
      const DeepCollectionEquality().hash(blueLagoonLight),
      const DeepCollectionEquality().hash(blueLagoonDark),
      const DeepCollectionEquality().hash(darkSand),
      const DeepCollectionEquality().hash(lightMist),
    );
  }
}

extension AppColorThemeBuildContextProps on BuildContext {
  AppColorTheme get appColorTheme => Theme.of(this).extension<AppColorTheme>()!;
  Color get blueLagoon => appColorTheme.blueLagoon;
  Color get blueLagoonLight => appColorTheme.blueLagoonLight;
  Color get blueLagoonDark => appColorTheme.blueLagoonDark;
  Color get darkSand => appColorTheme.darkSand;
  Color get lightMist => appColorTheme.lightMist;
}
