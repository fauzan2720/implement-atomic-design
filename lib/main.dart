import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:implement_atomic_design/core/components/avatar_image.dart';
import 'package:implement_atomic_design/core/components/button.dart';
import 'package:implement_atomic_design/core/components/menu_image.dart';
import 'package:implement_atomic_design/core/components/menu_nav_button.dart';
import 'package:implement_atomic_design/core/components/search_input.dart';
import 'package:implement_atomic_design/core/constants/icons.dart';
import 'package:implement_atomic_design/core/constants/images.dart';

import 'core/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Row(children: [AvatarImage(AppImages.profile)]),
          const SizedBox(height: 16.0),
          SearchInput(
            controller: searchController,
            onChanged: (value) {},
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Button(
                label: 'Button Aktif',
                onPressed: () {},
              ),
              const SizedBox(width: 16.0),
              Button(
                label: 'Button in-Aktif',
                onPressed: () {},
                isActive: false,
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          const Row(children: [MenuImage(AppImages.menu1)]),
          const SizedBox(height: 16.0),
          Row(
            children: [
              MenuNavButton(
                iconPath: AppIcons.home,
                label: 'Beranda',
                onPressed: () {},
                isActive: true,
              ),
              const SizedBox(width: 16.0),
              MenuNavButton(
                iconPath: AppIcons.home,
                label: 'Beranda',
                onPressed: () {},
                isActive: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
