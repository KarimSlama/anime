import 'package:flutter/material.dart';

import '../../constants/anime_strings.dart';
import '../../helper/helper_functions.dart';
import '../../theme/custom_themes/anime_text_theme_extension.dart';

class SectionHeading extends StatelessWidget {
  final bool isActionButton, isIcon;
  final String text, buttonText;
  final Color? textColor, iconColor;
  final void Function()? onPressed;
  final IconData? icon;
  const SectionHeading(
      {super.key,
      this.isActionButton = true,
      required this.text,
      this.buttonText = AnimeStrings.seeAll,
      this.textColor,
      this.onPressed,
      this.isIcon = false,
      this.icon,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: AnimeHelperFunctions.screenWidth(context) / 1.4,
          child: Text(
            text,
            style: Theme.of(context)
                .extension<AnimeeTextThemeExtension>()!
                .textTheme
                .headlineMedium!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (isActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonText)),
        if (isIcon)
          IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                color: iconColor,
              )),
      ],
    );
  }
}
