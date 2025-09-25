import 'package:flutter/material.dart';

import '../constants/anime_colors.dart';

class VerticalDividerLine extends StatelessWidget {
  const VerticalDividerLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      width: double.infinity,
      height: .5,
      decoration: BoxDecoration(
        color: AnimeColors.silver,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 0,
            color: Colors.black.withValues(alpha: .4),
            blurStyle: BlurStyle.outer,
          )
        ],
      ),
    );
  }
}
