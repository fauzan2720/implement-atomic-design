import 'package:flutter/material.dart';
import 'package:implement_atomic_design/core/constants/colors.dart';

class Button extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isActive;

  const Button({
    super.key,
    required this.label,
    required this.onPressed,
    this.isActive = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isActive ? AppColors.primary : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: isActive
              ? BorderSide.none
              : const BorderSide(color: AppColors.grey),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isActive ? AppColors.black : AppColors.grey,
        ),
      ),
    );
  }
}
