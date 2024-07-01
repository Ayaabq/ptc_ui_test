import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/color_manager.dart';
import 'package:shopping_test/core/utils/style_maneger.dart';
import 'package:shopping_test/core/utils/values_manager.dart';
import 'package:shopping_test/models/cart_model.dart';
import 'package:shopping_test/widgets/add_icon_button.dart';

import '../../../../core/consts/const.dart';
import '../../../../models/item_model.dart';

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({super.key, required this.item, required this.index});
  final Item item;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: Color(0xffF8F9FB),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Icon(
                Icons.image,
                size: AppSize.s120,
                color: ColorManager.trinaryColor,
              ),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AddIconButton(onPressed: () {
                  Const.addToCart(CartItem(itemIndex: index, quantity: 1));
                  ScaffoldMessenger.of(context).showSnackBar(

                      SnackBar(content: Text("${item.name} added"))
                  );
                })
              ],
            ),
            Text(
              '\$ ${item.price}',
              style: StyleManage.itemTitles14wbold(),
            ),
            const SizedBox(height: AppSize.s6),
            Text(
              '${item.annotation} |',
              style: StyleManage.itemDetails12w300(),
            ),

          ],
        ),
      ),
    );
  }
}
