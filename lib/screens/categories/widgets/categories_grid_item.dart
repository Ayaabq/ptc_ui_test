import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/color_manager.dart';
import 'package:shopping_test/core/utils/style_maneger.dart';
import 'package:shopping_test/core/utils/values_manager.dart';
import 'package:shopping_test/models/category_model.dart';
import 'package:shopping_test/screens/categories/product_screen.dart';
import '../../../../models/item_model.dart';
import '../../../core/consts/const.dart';

class CategoriesGridItem extends StatelessWidget {
  const CategoriesGridItem({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => ProductScreen(
              items: category.items.map((e) => Const.items[e]).toList(),
            ),
          ),
        );
      },
      child: Container(
        width: 140,
        decoration: BoxDecoration(
          color: const Color(0xffF8F9FB),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Column(
            children: [
              const Center(
                child: Icon(
                  Icons.image,
                  size: AppSize.s100,
                  color: ColorManager.trinaryColor,
                ),
              ),
              const Divider(
                indent: AppSize.s16,
                endIndent: AppSize.s16,
              ),
              Text(
                ' ${category.title}',
                style: StyleManage.itemTitles14wbold(),
              ),
              const SizedBox(height: AppSize.s6),
              Text(
                maxLines: 1,
                '${category.subTitle} |',
                style: StyleManage.itemDetails12w300(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
