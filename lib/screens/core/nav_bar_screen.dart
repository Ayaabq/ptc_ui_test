import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_test/screens/categories/categories_screen.dart';
import 'package:shopping_test/screens/home/home_screen.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/values_manager.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  int activeIndex = 0;

  final List<IconData> _icons = [
    Iconsax.home,
    Iconsax.category,
    Iconsax.heart,
    Icons.more_vert
  ];
  final List<Widget> _widgets = [
    HomeScreen(),
    CategoriesScreen(),
    Container(),
    Container(),
  ];

  Color iconColor(e) {
    return _icons[activeIndex] == e
        ? ColorManager.secondaryColor
        : ColorManager.blackColor;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.transparent, //For not shadow in back drawer
      body: _widgets[activeIndex],
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: ColorManager.blackColor,
        color: ColorManager.whiteColor,
        animationDuration: const Duration(microseconds: 300),
        items: _icons
            .map(
              (e) => Icon(
                e,
                color: iconColor(e),
              ),
            )
            .toList(),
        onTap: (index) {
          setState(
            () {
              activeIndex = index;
            },
          );
        },
      ),
    );
  }
}
