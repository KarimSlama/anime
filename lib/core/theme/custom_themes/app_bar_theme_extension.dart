import 'package:flutter/material.dart';

class AnimeAppbarThemeExtension
    extends ThemeExtension<AnimeAppbarThemeExtension> {
  final Color iconColor;
  final Color titleColor;
  final Color? backgroundColor;

  AnimeAppbarThemeExtension({
    required this.iconColor,
    required this.titleColor,
    this.backgroundColor,
  });

  @override
  AnimeAppbarThemeExtension copyWith({
    Color? iconColor,
    Color? titleColor,
    Color? backgroundColor,
  }) {
    return AnimeAppbarThemeExtension(
      iconColor: iconColor ?? this.iconColor,
      titleColor: titleColor ?? this.titleColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  AnimeAppbarThemeExtension lerp(
      ThemeExtension<AnimeAppbarThemeExtension>? other, double t) {
    if (other is! AnimeAppbarThemeExtension) return this;
    return AnimeAppbarThemeExtension(
      iconColor: Color.lerp(iconColor, other.iconColor, t)!,
      titleColor: Color.lerp(titleColor, other.titleColor, t)!,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
    );
  }
}
