import 'package:anime/anime/anime_details/presentation/screen/anime_details_screen.dart';
import 'package:anime/anime/layout/layout_nav.dart';
import 'package:anime/anime/upgrade_plan/presentation/screen/upgrade_plan_screen.dart';
import 'package:anime/core/routing/routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.layoutNav:
        return MaterialPageRoute(builder: (_) => const LayoutNav());

      case Routes.detailsScreen:
        return MaterialPageRoute(builder: (_) => const AnimeDetailsScreen());

      case Routes.upgradePlanScreen:
        return MaterialPageRoute(builder: (_) => const UpgradePlanScreen());
      default:
        return null;
    }
  }
}
