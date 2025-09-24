import 'package:flutter/material.dart';

class AnimeeTextThemeExtension
    extends ThemeExtension<AnimeeTextThemeExtension> {
  final TextTheme textTheme;

  const AnimeeTextThemeExtension({required this.textTheme});

  @override
  AnimeeTextThemeExtension copyWith({TextTheme? textTheme}) {
    return AnimeeTextThemeExtension(
      textTheme: textTheme ?? this.textTheme,
    );
  }

  @override
  AnimeeTextThemeExtension lerp(
      ThemeExtension<AnimeeTextThemeExtension>? other, double t) {
    if (other is! AnimeeTextThemeExtension) return this;
    return AnimeeTextThemeExtension(
      textTheme: TextTheme.lerp(textTheme, other.textTheme, t),
    );
  }
}
