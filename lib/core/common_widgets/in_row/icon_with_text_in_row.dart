import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/anime_colors.dart';
import '../../theme/custom_themes/anime_text_theme_extension.dart';

class IconWithTextInRow extends StatelessWidget {
  final String icon, text;
  final bool isShouldStart;
  const IconWithTextInRow({
    super.key,
    required this.icon,
    required this.text,
    this.isShouldStart = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment:
          isShouldStart ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(icon),
        Flexible(
          child: Text(
            text,
            style: Theme.of(context)
                .extension<AnimeeTextThemeExtension>()!
                .textTheme
                .bodyLarge!
                .apply(color: AnimeColors.white),
          ),
        ),
      ],
    );
  }
}
