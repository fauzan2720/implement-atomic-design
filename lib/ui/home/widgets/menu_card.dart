import 'package:flutter/material.dart';
import 'package:implement_atomic_design/core/components/menu_image.dart';
import 'package:implement_atomic_design/core/constants/colors.dart';
import 'package:implement_atomic_design/ui/home/models/menu_model.dart';

class MenuCard extends StatelessWidget {
  final MenuModel data;

  const MenuCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
        color: AppColors.card,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MenuImage(
            data.image,
            width: 125.0,
            height: 136.0,
          ),
          const SizedBox(height: 12.0),
          Text(
            data.name,
            style: const TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 6.0),
          Text(
            data.type,
            style: const TextStyle(
              color: AppColors.grey,
              fontSize: 12.0,
            ),
          ),
          const SizedBox(height: 9.0),
        ],
      ),
    );
  }
}
