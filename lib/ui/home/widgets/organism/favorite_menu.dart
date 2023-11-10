import 'package:flutter/material.dart';
import 'package:implement_atomic_design/core/constants/colors.dart';
import 'package:implement_atomic_design/core/constants/images.dart';
import 'package:implement_atomic_design/ui/home/models/menu_model.dart';
import 'package:implement_atomic_design/ui/home/widgets/menu_card.dart';

class FavoriteMenu extends StatelessWidget {
  const FavoriteMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MenuModel> datas = [
      MenuModel(
        image: AppImages.menu1,
        name: 'Cream Sweet Pie',
        type: 'Makanan',
      ),
      MenuModel(
        image: AppImages.menu2,
        name: 'DoubleJumbo Pie',
        type: 'Makanan',
      ),
      MenuModel(
        image: AppImages.menu3,
        name: 'Fruit’s Small Pie',
        type: 'Minuman',
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Menu Tervaforit',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
          ),
        ),
        const SizedBox(height: 12.0),
        SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0 - 6.0),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: datas
                .map((data) => Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: MenuCard(data: data),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
