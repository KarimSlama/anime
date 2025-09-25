import 'package:anime/core/constants/anime_colors.dart';
import 'package:anime/core/constants/anime_strings.dart';
import 'package:anime/core/helper/helper_functions.dart';
import 'package:anime/core/theme/custom_themes/anime_text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/theme/custom_themes/elevated_button_theme_extension.dart';
import '../../../../gen/assets.gen.dart';
import '../widgets/select_plan_card.dart';

class UpgradePlanScreen extends StatelessWidget {
  const UpgradePlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AnimeColors.linear),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              left: -140,
              child: SvgPicture.asset(Assets.images.star),
            ),
            Positioned(
              top: 160,
              left: 227,
              child: Transform.rotate(
                  angle: -2, child: SvgPicture.asset(Assets.images.star)),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                    vertical: 40, horizontal: 16),
                child: Column(
                  spacing: 5,
                  children: [
                    /// App Bar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Text(
                                textAlign: TextAlign.center,
                                AnimeStrings.upgradePlan,
                                style: Theme.of(context)
                                    .extension<AnimeeTextThemeExtension>()!
                                    .textTheme
                                    .headlineMedium)),
                        IconButton(
                            onPressed: () {},
                            icon: Container(
                                padding: EdgeInsetsDirectional.all(4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AnimeColors.white,
                                ),
                                child: Icon(Icons.close)))
                      ],
                    ),
                    Image.asset(
                      Assets.images.rocketBoy.path,
                      width: 207,
                    ),
                    Text(AnimeStrings.seamlessAnimeExperienceAdFree,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .extension<AnimeeTextThemeExtension>()!
                            .textTheme
                            .headlineMedium),
                    Text(
                        AnimeStrings
                            .enjoyUnlimitedAnimeStreamingWithoutInterruptions,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .extension<AnimeeTextThemeExtension>()!
                            .textTheme
                            .bodyLarge!
                            .apply(color: AnimeColors.grey)),
                    SizedBox(
                        height:
                            AnimeHelperFunctions.screenHeight(context) / 40),
                    SelectPlanCard(
                      isSelected: true,
                      dashPerMonthOrYear: AnimeStrings.dashMonth,
                      planType: AnimeStrings.monthly,
                      price: '5',
                    ),

                    SelectPlanCard(
                      isSelected: false,
                      dashPerMonthOrYear: AnimeStrings.dashYear,
                      planType: AnimeStrings.annaully,
                      price: '50',
                    ),
                    SizedBox(
                        height:
                            AnimeHelperFunctions.screenHeight(context) / 30),

                    SizedBox(
                      width: double.infinity,
                      height: 46,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context)
                              .extension<ElevatedButtonThemeExtension>()!
                              .primary,
                        ),
                        child: Text(AnimeStrings.continue_,
                            style: Theme.of(context)
                                .extension<AnimeeTextThemeExtension>()!
                                .textTheme
                                .titleLarge!
                                .apply(color: AnimeColors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
