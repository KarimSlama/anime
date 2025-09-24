import 'package:anime/core/common_widgets/heading/section_heading.dart';
import 'package:anime/core/constants/anime_strings.dart';
import 'package:anime/core/helper/helper_functions.dart';
import 'package:anime/core/theme/custom_themes/anime_text_theme_extension.dart';
import 'package:anime/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/anime_card_item_widget.dart';
import '../widgets/anime_character_item_widget.dart';
import '../widgets/categories_item_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.topRight,
      children: [
        Positioned(
          right: -140,
          child: SvgPicture.asset(Assets.images.star),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 14, top: 67),
            child: Column(
              spacing: 24,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AnimeStrings.whereAnimeComesAlive,
                    style: Theme.of(context)
                        .extension<AnimeeTextThemeExtension>()!
                        .textTheme
                        .headlineMedium!),
                CategoriesItemButtons(),
                SizedBox(
                  height: AnimeHelperFunctions.screenHeight(context) / 2.7,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => AnimeCardItemWidget(),
                      separatorBuilder: (_, index) => SizedBox(width: 14),
                      itemCount: 3),
                ),
                SectionHeading(text: AnimeStrings.topCharacters),
                SizedBox(
                  height: AnimeHelperFunctions.screenHeight(context) / 4.7,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => AnimeCharacterItemWidget(),
                      separatorBuilder: (_, index) => SizedBox(width: 14),
                      itemCount: 4),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
