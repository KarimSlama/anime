import 'package:flutter/material.dart';

class ElevatedButtonThemeExtension
    extends ThemeExtension<ElevatedButtonThemeExtension> {
  final Color primary;
  final Color secondary;

  ElevatedButtonThemeExtension(
      {required this.primary, required this.secondary});

  @override
  ElevatedButtonThemeExtension copyWith({Color? primary, Color? secondary}) {
    return ElevatedButtonThemeExtension(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
    );
  }

  @override
  ElevatedButtonThemeExtension lerp(
      ThemeExtension<ElevatedButtonThemeExtension>? other, double t) {
    if (other is! ElevatedButtonThemeExtension) return this;
    return ElevatedButtonThemeExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
    );
  }
}
