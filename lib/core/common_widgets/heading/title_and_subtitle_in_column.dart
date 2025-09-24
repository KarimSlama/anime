import 'package:flutter/material.dart';

import '../../constants/anime_colors.dart';
import '../../theme/custom_themes/anime_text_theme_extension.dart';

class TitleAndSubtitlInColumn extends StatelessWidget {
  final String title, subtitle;
  const TitleAndSubtitlInColumn(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title,
            style: Theme.of(context)
                .extension<AnimeeTextThemeExtension>()!
                .textTheme
                .titleLarge!),
        Text(subtitle,
            style: Theme.of(context)
                .extension<AnimeeTextThemeExtension>()!
                .textTheme
                .bodyLarge!
                .apply(color: AnimeColors.grey)),
      ],
    );
  }
}
