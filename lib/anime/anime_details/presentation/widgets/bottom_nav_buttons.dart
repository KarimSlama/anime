import 'package:flutter/material.dart';

import '../../../../core/common_widgets/in_row/icon_with_text_in_row.dart';
import '../../../../core/constants/anime_colors.dart';
import '../../../../core/constants/anime_strings.dart';
import '../../../../core/theme/custom_themes/elevated_button_theme_extension.dart';
import '../../../../gen/assets.gen.dart';

class BottomNavButtons extends StatelessWidget {
  const BottomNavButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      color: AnimeColors.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context)
                      .extension<ElevatedButtonThemeExtension>()!
                      .secondary
                      .withValues(alpha: .5)),
              child: IconWithTextInRow(
                  icon: Assets.icons.stopwatch, text: AnimeStrings.preview)),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context)
                      .extension<ElevatedButtonThemeExtension>()!
                      .primary),
              child: IconWithTextInRow(
                  icon: Assets.icons.eye, text: AnimeStrings.watchNow))
        ],
      ),
    );
  }
}
