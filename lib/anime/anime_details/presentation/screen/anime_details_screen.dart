import 'package:anime/core/constants/anime_colors.dart';
import 'package:anime/core/theme/custom_themes/anime_text_theme_extension.dart';
import 'package:anime/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/common_widgets/container/circular_container_with_box_shadow.dart';
import '../../../../core/common_widgets/in_row/icon_with_text_in_row.dart';
import '../../../../core/common_widgets/vertical_divider_line.dart';
import '../widgets/anime_categorization_text.dart';
import '../widgets/anime_overview_classifications.dart';
import '../widgets/bottom_nav_buttons.dart';

class AnimeDetailsScreen extends StatelessWidget {
  const AnimeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = ['Dark Fantasy', 'Action', 'Adventure'];
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              children: [
                Image.network(
                    width: double.infinity,
                    fit: BoxFit.cover,
                    'https://tse2.mm.bing.net/th/id/OIP.6qDM2yEpcJC-BSNyA3RlRwHaJ4?rs=1&pid=ImgDetMain&o=7&rm=3'),
                Container(
                  width: double.infinity,
                  padding: EdgeInsetsDirectional.only(
                      start: 20, end: 20, top: 80, bottom: 20),
                  decoration: BoxDecoration(
                      color: AnimeColors.blue.withValues(alpha: .95)),
                  child: Column(
                    spacing: 20,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10,
                        children: List.generate(
                          categories.length,
                          (index) => CircularContainerWithBoxShadow(
                            child: AnimeCategorizationText(
                              text: categories[index],
                            ),
                          ),
                        ),
                      ),
                      VerticalDividerLine(),
                      AnimeOverviewClassifications(),
                      VerticalDividerLine(),
                      IconWithTextInRow(
                          isShouldStart: true,
                          icon: Assets.icons.hut,
                          text:
                              'Demon Slayer: Kimetsu no Yaiba (Japanese: 鬼滅の刃, Hepburn: Kimetsu no Yaiba; rgh. Blade of Demon Destruction [4]) is a Japanese manga series written and illustrated by Koyoharu Gotouge. It was serialized in Shueisha\'s shōnen manga magazine Weekly Shōnen Jump from February 2016 to May 2020, with its chapters collected in 23 tankōbon volumes. It has been published in English by Viz Media and simultaneously on the Manga Plus platform by Shueisha.')
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 410,
              left: 90,
              child: SvgPicture.asset(
                Assets.images.whiteEllipseShape,
              ),
            ),
            Positioned(
              top: 405,
              right: 95,
              child: SvgPicture.asset(
                Assets.images.redEllipseShape,
              ),
            ),
            Positioned(
              top: 420,
              left: 85,
              child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'DEMON\n',
                      style: Theme.of(context)
                          .extension<AnimeeTextThemeExtension>()!
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                              fontFamily: 'NewRocker',
                              fontSize: 46,
                              color: Colors.black),
                    ),
                    TextSpan(
                      text: 'SLAYER',
                      style: Theme.of(context)
                          .extension<AnimeeTextThemeExtension>()!
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                              fontFamily: 'NewRocker',
                              fontSize: 36,
                              color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavButtons(),
    );
  }
}
