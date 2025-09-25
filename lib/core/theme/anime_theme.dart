import 'package:anime/core/constants/anime_colors.dart';
import 'package:anime/core/theme/custom_themes/anime_text_theme_extension.dart';
import 'package:anime/core/theme/custom_themes/app_bar_theme_extension.dart';
import 'package:anime/core/theme/custom_themes/elevated_button_theme_extension.dart';
import 'package:anime/core/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AnimeTheme {
  AnimeTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Raleway',
    primaryColor: AnimeColors.primary,
    scaffoldBackgroundColor: AnimeColors.light,
    extensions: [
      AnimeAppbarThemeExtension(
          iconColor: AnimeColors.primary, titleColor: AnimeColors.primary),
      AnimeeTextThemeExtension(textTheme: animeLightTextTheme),
      ElevatedButtonThemeExtension(
          primary: AnimeColors.secondary, secondary: AnimeColors.grey)
    ],
  );
}
