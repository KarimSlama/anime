import 'package:anime/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/common_widgets/heading/title_and_subtitle_in_column.dart';
import '../../../../core/constants/anime_colors.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/custom_themes/anime_text_theme_extension.dart';

class AnimeCardItemWidget extends StatelessWidget {
  const AnimeCardItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        GestureDetector(
          onTap: () => context.pushNamed(Routes.detailsScreen),
          child: Column(
            spacing: 8,
            children: [
              SizedBox(
                width: 184,
                height: 245,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                      'https://tse2.mm.bing.net/th/id/OIP.6qDM2yEpcJC-BSNyA3RlRwHaJ4?rs=1&pid=ImgDetMain&o=7&rm=3'),
                ),
              ),
              TitleAndSubtitlInColumn(
                  title: 'Detective Conan', subtitle: 'Mystery'),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
              margin: EdgeInsetsDirectional.only(top: 12, end: 18),
              padding:
                  EdgeInsetsDirectional.symmetric(horizontal: 5, vertical: 2),
              decoration: BoxDecoration(
                  color: AnimeColors.white,
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Iconsax.star1,
                    color: AnimeColors.secondary,
                  ),
                  Text('4.9',
                      style: Theme.of(context)
                          .extension<AnimeeTextThemeExtension>()!
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.w700)),
                ],
              )),
        ),
      ],
    );
  }
}
