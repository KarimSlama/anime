import 'package:anime/anime/layout/layout_nav.dart';
import 'package:anime/core/routing/routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.layoutNav:
        return MaterialPageRoute(builder: (_) => const LayoutNav());
      default:
        return null;
    }
  }
}
