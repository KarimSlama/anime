import 'package:anime/core/constants/anime_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../home/presentation/screen/home_screen.dart';

class LayoutNav extends StatelessWidget {
  const LayoutNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 26),
        child: GNav(
          tabBorderRadius: 20,
          gap: 10,
          padding:
              EdgeInsetsDirectional.symmetric(horizontal: 14, vertical: 10),
          curve: Curves.easeOutExpo,
          duration: Duration(milliseconds: 900),
          color: AnimeColors.lightGrey,
          activeColor: Colors.white,
          iconSize: 23,
          tabBackgroundColor: AnimeColors.secondary,
          selectedIndex: 0,
          tabs: [
            GButton(
              icon: Iconsax.home_2_copy,
              text: 'Home',
            ),
            GButton(
              icon: Iconsax.book_saved,
              text: 'Books',
            ),
            GButton(
              icon: Iconsax.search_normal_1_copy,
              text: 'Search',
            ),
            GButton(
              icon: Iconsax.global_copy,
              text: 'Global',
            ),
            GButton(
              icon: Iconsax.setting_copy,
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
