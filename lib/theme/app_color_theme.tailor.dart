// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_color_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppColorThemeTailorMixin on ThemeExtension<AppColorTheme> {
  Color get primary;
  Color get primaryContainer;
  Color get onPrimary;
  Color get secondary;
  Color get secondaryContainer;
  Color get surface;
  Color get surfaceContainerLowest;
  Color get onSurface;

  @override
  AppColorTheme copyWith({
    Color? primary,
    Color? primaryContainer,
    Color? onPrimary,
    Color? secondary,
    Color? secondaryContainer,
    Color? surface,
    Color? surfaceContainerLowest,
    Color? onSurface,
  }) {
    return AppColorTheme(
      primary: primary ?? this.primary,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      secondaryContainer: secondaryContainer ?? this.secondaryContainer,
      surface: surface ?? this.surface,
      surfaceContainerLowest:
          surfaceContainerLowest ?? this.surfaceContainerLowest,
      onSurface: onSurface ?? this.onSurface,
    );
  }

  @override
  AppColorTheme lerp(covariant ThemeExtension<AppColorTheme>? other, double t) {
    if (other is! AppColorTheme) return this as AppColorTheme;
    return AppColorTheme(
      primary: Color.lerp(primary, other.primary, t)!,
      primaryContainer: Color.lerp(
        primaryContainer,
        other.primaryContainer,
        t,
      )!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      secondaryContainer: Color.lerp(
        secondaryContainer,
        other.secondaryContainer,
        t,
      )!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceContainerLowest: Color.lerp(
        surfaceContainerLowest,
        other.surfaceContainerLowest,
        t,
      )!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColorTheme &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality().equals(
              primaryContainer,
              other.primaryContainer,
            ) &&
            const DeepCollectionEquality().equals(onPrimary, other.onPrimary) &&
            const DeepCollectionEquality().equals(secondary, other.secondary) &&
            const DeepCollectionEquality().equals(
              secondaryContainer,
              other.secondaryContainer,
            ) &&
            const DeepCollectionEquality().equals(surface, other.surface) &&
            const DeepCollectionEquality().equals(
              surfaceContainerLowest,
              other.surfaceContainerLowest,
            ) &&
            const DeepCollectionEquality().equals(onSurface, other.onSurface));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(primaryContainer),
      const DeepCollectionEquality().hash(onPrimary),
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(secondaryContainer),
      const DeepCollectionEquality().hash(surface),
      const DeepCollectionEquality().hash(surfaceContainerLowest),
      const DeepCollectionEquality().hash(onSurface),
    );
  }
}

extension AppColorThemeBuildContextProps on BuildContext {
  AppColorTheme get appColorTheme => Theme.of(this).extension<AppColorTheme>()!;
  Color get primary => appColorTheme.primary;
  Color get primaryContainer => appColorTheme.primaryContainer;
  Color get onPrimary => appColorTheme.onPrimary;
  Color get secondary => appColorTheme.secondary;
  Color get secondaryContainer => appColorTheme.secondaryContainer;
  Color get surface => appColorTheme.surface;
  Color get surfaceContainerLowest => appColorTheme.surfaceContainerLowest;
  Color get onSurface => appColorTheme.onSurface;
}
