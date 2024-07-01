import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/color_manager.dart';
import 'package:shopping_test/core/utils/string_manager.dart';
import 'package:switcher_button/switcher_button.dart';

import '../../../core/utils/style_maneger.dart';
import '../../../core/utils/values_manager.dart';

class CategoriesAppBar extends StatelessWidget {
  const CategoriesAppBar({super.key, required this.onChange});
  final void Function(bool) onChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                  StringManager.isGrid,
                  style: StyleManage.whiteButtonTexts16w600(color: ColorManager.whiteColor)
              ),
              const SizedBox(width: AppSize.s8,),
              SwitcherButton(value: true, onChange: onChange),
            ],
          ),
          Text("Shop", style: StyleManage.categoriesAppbars50w300()),
          Text(
            "By Category",
            style:
                StyleManage.categoriesAppbars50w300(fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: AppSize.s24,
          )
        ],
      ),
    );
  }
}
