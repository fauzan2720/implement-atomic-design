import 'package:flutter/material.dart';
import 'package:implement_atomic_design/core/constants/colors.dart';
import 'package:implement_atomic_design/core/constants/icons.dart';

import '../../../core/components/avatar_image.dart';
import '../../../core/constants/images.dart';

class HeaderApp extends StatelessWidget {
  final String name;

  const HeaderApp({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AvatarImage(AppImages.profile),
        const SizedBox(width: 18.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Hai, ',
                  children: [
                    TextSpan(
                      text: name,
                      style: const TextStyle(
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 2.0),
              const Text(
                'Mau buat makanan apa?',
                style: TextStyle(
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage(AppIcons.cart),
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
