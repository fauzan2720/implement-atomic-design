import 'package:flutter/material.dart';
import 'package:implement_atomic_design/core/components/button.dart';

class CategoriesMenu extends StatefulWidget {
  const CategoriesMenu({super.key});

  @override
  State<CategoriesMenu> createState() => _CategoriesMenuState();
}

class _CategoriesMenuState extends State<CategoriesMenu> {
  int currentIndexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 16.0),
          Button(
            label: 'Semua Menu',
            onPressed: () {
              currentIndexSelected = 0;
              setState(() {});
            },
            isActive: currentIndexSelected == 0,
          ),
          const SizedBox(width: 16.0),
          Button(
            label: 'Makanan',
            onPressed: () {
              currentIndexSelected = 1;
              setState(() {});
            },
            isActive: currentIndexSelected == 1,
          ),
          const SizedBox(width: 16.0),
          Button(
            label: 'Minuman',
            onPressed: () {
              currentIndexSelected = 2;
              setState(() {});
            },
            isActive: currentIndexSelected == 2,
          ),
          const SizedBox(width: 16.0),
        ],
      ),
    );
  }
}
