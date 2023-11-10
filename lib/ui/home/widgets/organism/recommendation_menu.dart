import 'package:flutter/material.dart';
import 'package:implement_atomic_design/core/constants/colors.dart';
import 'package:implement_atomic_design/core/constants/images.dart';
import 'package:implement_atomic_design/ui/home/models/menu_model.dart';
import 'package:implement_atomic_design/ui/home/widgets/menu_tile.dart';

class RecommendationMenu extends StatelessWidget {
  const RecommendationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MenuModel> datas = [
      MenuModel(
        image: AppImages.menu1,
        name: 'Cream Sweet Pie',
        type: 'Makanan',
      ),
      MenuModel(
        image: AppImages.menu3,
        name: 'Fruit’s Small Pie',
        type: 'Minuman',
      ),
      MenuModel(
        image: AppImages.menu2,
        name: 'DoubleJumbo Pie',
        type: 'Makanan',
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Rekomendasi Untuk Kamu',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
          ),
        ),
        const SizedBox(height: 12.0),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          separatorBuilder: (context, index) {
            return const SizedBox(height: 30.0);
          },
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return MenuTile(
              data: datas[index],
            );
          },
        ),
      ],
    );
  }
}
