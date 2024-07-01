import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_test/screens/cart/cart_screen.dart';

import '../core/utils/color_manager.dart';
import '../core/utils/screen_size_util.dart';
import '../core/utils/string_manager.dart';
import '../core/utils/style_maneger.dart';
import '../core/utils/values_manager.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar(
      {super.key, required this.haveSearch, required this.child, this.color, this.title});
  final bool haveSearch;
  final Widget child;
  final Color? color;
  final String? title;
  @override
  Widget build(BuildContext context) {
    ScreenSizeUtil.init(context);
    return SliverAppBar(
      title: Text(
        title??StringManager.hiAppBar,
        style: StyleManage.appBarUserNames22w600(),
      ),
      actions: [
        if (haveSearch)
          IconButton(
            icon: const Icon(
              Icons.search_outlined,
              size: AppSize.s24,
              color: ColorManager.whiteColor,
            ),
            onPressed: () {},
          ),
        IconButton(
          icon: const Icon(
            Iconsax.bag,
            size: AppSize.s24,
            color: ColorManager.whiteColor,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => ShoppingCartScreen(),
              ),
            );
          },
        )
      ],
      expandedHeight: ScreenSizeUtil.dynamicHeight(.3),
      pinned: true,
      floating: true,
      flexibleSpace: Container(
        color: color??ColorManager.primaryColor,
        child: FlexibleSpaceBar(
          background: Column(
            children: [
              const Spacer(),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
