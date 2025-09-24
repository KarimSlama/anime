import 'package:anime/core/constants/anime_colors.dart';
import 'package:anime/core/constants/anime_strings.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/custom_themes/anime_text_theme_extension.dart';

class CategoriesItemButtons extends StatefulWidget {
  const CategoriesItemButtons({super.key});

  @override
  State<CategoriesItemButtons> createState() => _CategoriesItemButtonsState();
}

class _CategoriesItemButtonsState extends State<CategoriesItemButtons> {
  final List<String> categories = [
    AnimeStrings.all,
    AnimeStrings.popular,
    AnimeStrings.trending,
    AnimeStrings.newReleases,
    AnimeStrings.topRated,
    AnimeStrings.upcoming,
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (_, index) {
          final bool isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: isSelected ? AnimeColors.secondary : Colors.white,
              ),
              alignment: Alignment.center,
              child: Text(
                categories[index],
                style: Theme.of(context)
                    .extension<AnimeeTextThemeExtension>()!
                    .textTheme
                    .bodyLarge!
                    .apply(
                      color: isSelected
                          ? AnimeColors.white
                          : AnimeColors.secondary,
                    ),
              ),
            ),
          );
        },
      ),
    );
  }
}
