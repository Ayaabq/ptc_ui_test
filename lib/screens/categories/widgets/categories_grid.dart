import 'package:flutter/material.dart';
import 'package:shopping_test/screens/categories/widgets/categories_grid_item.dart';
import '../../../../core/consts/const.dart';
import '../../../../core/utils/values_manager.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverPadding(
      padding: const EdgeInsets.all( AppPadding.p24),
      sliver: SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: AppSize.s18,
            crossAxisSpacing: AppSize.s16,
            childAspectRatio: 0.95,
          ),
          delegate: SliverChildBuilderDelegate(
              childCount: Const.categoryList.length, (context, index) {
            final category = Const.categoryList[index];
            return CategoriesGridItem(category: category);
          })),
    );
  }
}
