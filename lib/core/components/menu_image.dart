import 'package:flutter/material.dart';

class MenuImage extends StatelessWidget {
  final String path;
  final double width;
  final double height;

  const MenuImage(
    this.path, {
    super.key,
    this.width = 120.0,
    this.height = 120.0,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      child: Image.asset(
        path,
        width: width,
        height: height,
        fit: BoxFit.cover,
      ),
    );
  }
}
