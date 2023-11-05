import 'package:flutter/material.dart';

class AvatarImage extends StatelessWidget {
  final String path;
  const AvatarImage(this.path, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(100.0)),
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
