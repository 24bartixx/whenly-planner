// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppThemeTailorMixin on ThemeExtension<AppTheme> {
  AppTextTheme get textTheme;
  AppColorTheme get colorTheme;

  @override
  AppTheme copyWith({AppTextTheme? textTheme, AppColorTheme? colorTheme}) {
    return AppTheme(
      textTheme: textTheme ?? this.textTheme,
      colorTheme: colorTheme ?? this.colorTheme,
    );
  }

  @override
  AppTheme lerp(covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this as AppTheme;
    return AppTheme(
      textTheme: textTheme.lerp(other.textTheme, t),
      colorTheme: colorTheme.lerp(other.colorTheme, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTheme &&
            const DeepCollectionEquality().equals(textTheme, other.textTheme) &&
            const DeepCollectionEquality().equals(
              colorTheme,
              other.colorTheme,
            ));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(textTheme),
      const DeepCollectionEquality().hash(colorTheme),
    );
  }
}

extension AppThemeBuildContextProps on BuildContext {
  AppTheme get appTheme => Theme.of(this).extension<AppTheme>()!;
  AppTextTheme get textTheme => appTheme.textTheme;
  AppColorTheme get colorTheme => appTheme.colorTheme;
}
