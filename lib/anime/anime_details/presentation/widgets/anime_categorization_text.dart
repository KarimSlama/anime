import 'package:flutter/material.dart';

import '../../../../core/constants/anime_colors.dart';
import '../../../../core/theme/custom_themes/anime_text_theme_extension.dart';

class AnimeCategorizationText extends StatelessWidget {
  final String text;
  const AnimeCategorizationText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .extension<AnimeeTextThemeExtension>()!
            .textTheme
            .bodyMedium!
            .copyWith(color: AnimeColors.white, fontWeight: FontWeight.w700));
  }
}
