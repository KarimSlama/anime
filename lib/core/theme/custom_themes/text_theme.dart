import 'package:flutter/material.dart';

import '../../constants/anime_colors.dart';

final animeLightTextTheme = TextTheme(
  headlineLarge: TextStyle(
      fontSize: 32, fontWeight: FontWeight.bold, color: AnimeColors.primary),
  headlineMedium: TextStyle(
      fontSize: 24, fontWeight: FontWeight.w600, color: AnimeColors.primary),
  headlineSmall: TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, color: AnimeColors.primary),
  titleLarge: TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: AnimeColors.primary),
  titleMedium: TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: AnimeColors.primary),
  titleSmall: TextStyle(
      fontSize: 16, fontWeight: FontWeight.w400, color: AnimeColors.primary),
  bodyLarge: TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: AnimeColors.primary),
  bodyMedium: TextStyle(
      fontSize: 12, fontWeight: FontWeight.normal, color: AnimeColors.primary),
  bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AnimeColors.primary.withValues(alpha: 0.5)),
  labelLarge: TextStyle(
      fontSize: 12, fontWeight: FontWeight.normal, color: AnimeColors.primary),
  labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: AnimeColors.primary.withValues(alpha: 0.5)),
);
