import 'package:flutter/material.dart';

import '../../../../core/common_widgets/in_row/icon_with_text_in_row.dart';
import '../../../../gen/assets.gen.dart';

class AnimeOverviewClassifications extends StatelessWidget {
  const AnimeOverviewClassifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconWithTextInRow(text: "2.3M views", icon: Assets.icons.eye),
        IconWithTextInRow(text: "2K clap", icon: Assets.icons.clappHand),
        IconWithTextInRow(text: "4 seasons", icon: Assets.icons.movie),
      ],
    );
  }
}
