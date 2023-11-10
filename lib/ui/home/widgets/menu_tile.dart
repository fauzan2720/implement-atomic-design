import 'package:flutter/material.dart';
import 'package:implement_atomic_design/core/components/button.dart';
import 'package:implement_atomic_design/core/components/menu_image.dart';
import 'package:implement_atomic_design/core/constants/colors.dart';
import 'package:implement_atomic_design/ui/home/models/menu_model.dart';

class MenuTile extends StatelessWidget {
  final MenuModel data;

  const MenuTile({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MenuImage(data.image),
        const SizedBox(width: 12.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.type,
              style: const TextStyle(
                color: AppColors.grey,
                fontSize: 12.0,
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              data.name,
              style: const TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12.0),
            Button(
              label: 'Detail',
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
