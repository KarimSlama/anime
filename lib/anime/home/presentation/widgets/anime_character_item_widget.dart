import 'package:flutter/material.dart';

import '../../../../core/common_widgets/heading/title_and_subtitle_in_column.dart';

class AnimeCharacterItemWidget extends StatelessWidget {
  const AnimeCharacterItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Image.network(
              width: 95,
              height: 95,
              fit: BoxFit.cover,
              'https://i0.wp.com/www.techbii.com/wp-content/uploads/2020/08/ply0947_fall_reviews_2019_tv_anime.jpg'),
        ),
        TitleAndSubtitlInColumn(
            title: 'Gon Freecss', subtitle: 'Hunter X Hunter'),
      ],
    );
  }
}
