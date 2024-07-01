import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/color_manager.dart';
import 'package:shopping_test/core/utils/string_manager.dart';
import 'package:shopping_test/core/utils/style_maneger.dart';
import 'package:shopping_test/core/utils/values_manager.dart';

import '../../../../models/item_model.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p16),
      child: SizedBox(
        height: 150,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 137,
              height: 167,
              decoration: BoxDecoration(
                color: ColorManager.secondaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.image,
                size: 50,
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: AppSize.s16),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: StyleManage.whiteButtonTexts16w600(size: 18),
                ),
                const SizedBox(height: AppSize.s8),
                Text(
                  item.annotation,
                  style: StyleManage.itemDetails12w300()
                ),
                const SizedBox(height: AppSize.s8),
                Text(
                  StringManager.startingFrom,
                  style:StyleManage.itemDetails12w300(),
                ),
                const Spacer(),
                Text(
                  '\$${item.price}/${item.unit}',
                  style: StyleManage.whiteButtonTexts16w600(color: ColorManager.primaryColor),
                ),
                const SizedBox(height: AppSize.s8),

              ],
            ),

          ],
        ),
      ),
    );
  }
}



