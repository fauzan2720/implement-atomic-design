import 'package:flutter/material.dart';
import 'package:implement_atomic_design/core/constants/colors.dart';

class MenuNavButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final VoidCallback onPressed;
  final bool isActive;

  const MenuNavButton({
    super.key,
    required this.iconPath,
    required this.label,
    required this.onPressed,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ImageIcon(
              AssetImage(iconPath),
              color: isActive ? AppColors.primary : AppColors.grey,
            ),
            const SizedBox(height: 4.0),
            Text(
              'Beranda',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isActive ? AppColors.primary : AppColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
