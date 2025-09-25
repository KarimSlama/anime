import 'package:flutter/material.dart';

import '../../constants/anime_colors.dart';

class CircularContainerWithBoxShadow extends StatelessWidget {
  final Widget child;
  const CircularContainerWithBoxShadow({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(16),
      decoration: BoxDecoration(
        color: AnimeColors.silver.withValues(alpha: .28),
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
      child: child,
    );
  }
}
