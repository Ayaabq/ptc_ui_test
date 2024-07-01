import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/color_manager.dart';
import 'package:shopping_test/screens/categories/widgets/sliver_app_bar_delegate.dart';

import '../core/utils/values_manager.dart';

class CustomTapBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTapBar (
      {super.key, required this.tapController, required this.taps, required this.onTap, required this.inScroll});
  final TabController tapController;
  final List<String> taps;
  final bool inScroll;
  final void Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    var content =TabBar(
        onTap: onTap,
        isScrollable: true,
        indicatorPadding: const EdgeInsets.symmetric(vertical: AppPadding.p8),
        controller: tapController,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorManager.secondaryColor,
        ),
        labelColor: ColorManager.whiteColor,
        unselectedLabelColor: ColorManager.hintTextColor,
        tabs: taps
            .map((e) => Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Tab(
            text: e,
          ),
        ))
            .toList());
    return inScroll? SliverPersistentHeader(
      delegate: SliverAppBarDelegate(
        content
          ),
      pinned: true,
    ) : content;
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}
