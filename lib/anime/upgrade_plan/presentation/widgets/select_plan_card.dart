import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/anime_colors.dart';
import '../../../../core/constants/anime_strings.dart';
import '../../../../core/theme/custom_themes/anime_text_theme_extension.dart';
import '../../../../gen/assets.gen.dart';

class SelectPlanCard extends StatelessWidget {
  final String planType, price, dashPerMonthOrYear;

  final bool isSelected;
  const SelectPlanCard({
    super.key,
    required this.planType,
    required this.price,
    required this.dashPerMonthOrYear,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isSelected ? AnimeColors.primary : AnimeColors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(Assets.images.filesAndFolders.path),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(planType,
                  style: Theme.of(context)
                      .extension<AnimeeTextThemeExtension>()!
                      .textTheme
                      .titleLarge!
                      .apply(
                          color: isSelected
                              ? AnimeColors.white
                              : AnimeColors.primary)),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '\$$price USD ',
                        style: Theme.of(context)
                            .extension<AnimeeTextThemeExtension>()!
                            .textTheme
                            .titleLarge!
                            .apply(
                                color: isSelected
                                    ? AnimeColors.white
                                    : AnimeColors.primary)),
                    TextSpan(
                      text: dashPerMonthOrYear,
                      style: Theme.of(context)
                          .extension<AnimeeTextThemeExtension>()!
                          .textTheme
                          .titleLarge!
                          .apply(color: AnimeColors.purple),
                    ),
                  ],
                ),
              ),
              Text(
                AnimeStrings.includeFamilySharing,
                style: Theme.of(context)
                    .extension<AnimeeTextThemeExtension>()!
                    .textTheme
                    .bodyMedium!
                    .apply(color: AnimeColors.purple),
              ),
            ],
          ),
          Icon(isSelected ? Iconsax.tick_circle : Icons.circle_outlined,
              color: isSelected ? AnimeColors.secondary : Colors.black)
        ],
      ),
    );
  }
}
