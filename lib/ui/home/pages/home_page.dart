import 'package:flutter/material.dart';
import 'package:implement_atomic_design/core/components/menu_nav_button.dart';
import 'package:implement_atomic_design/core/components/search_input.dart';
import 'package:implement_atomic_design/core/constants/colors.dart';
import 'package:implement_atomic_design/core/constants/icons.dart';
import 'package:implement_atomic_design/ui/home/widgets/categories_menu.dart';
import 'package:implement_atomic_design/ui/home/widgets/header_app.dart';
import 'package:implement_atomic_design/ui/home/widgets/organism/favorite_menu.dart';
import 'package:implement_atomic_design/ui/home/widgets/organism/recommendation_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const paddingHorizontal = EdgeInsets.symmetric(horizontal: 16.0);
    final searchController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(height: 12.0),
            const Padding(
              padding: paddingHorizontal,
              child: HeaderApp(name: 'Fauzan'),
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding: paddingHorizontal,
              child: SearchInput(
                controller: searchController,
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 30.0),
            const CategoriesMenu(),
            const SizedBox(height: 30.0),
            const FavoriteMenu(),
            const SizedBox(height: 40.0),
            const RecommendationMenu(),
            const SizedBox(height: 34.0),
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          decoration: const BoxDecoration(
            color: AppColors.card,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MenuNavButton(
                iconPath: AppIcons.home,
                label: 'Beranda',
                onPressed: () {},
                isActive: true,
              ),
              MenuNavButton(
                iconPath: AppIcons.favorite,
                label: 'Favorit',
                onPressed: () {},
                isActive: false,
              ),
              MenuNavButton(
                iconPath: AppIcons.history,
                label: 'Riwayat',
                onPressed: () {},
                isActive: false,
              ),
              MenuNavButton(
                iconPath: AppIcons.profile,
                label: 'Profil',
                onPressed: () {},
                isActive: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
