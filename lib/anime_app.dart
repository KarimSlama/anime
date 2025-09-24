import 'package:anime/core/constants/anime_strings.dart';
import 'package:anime/core/theme/anime_theme.dart';
import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class AnimeApp extends StatelessWidget {
  final AppRouter appRouter;
  const AnimeApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AnimeStrings.appTitle,
      theme: AnimeTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.homeScreen,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
