import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/color_manager.dart';
import 'package:shopping_test/core/utils/style_maneger.dart';
import 'package:shopping_test/core/utils/values_manager.dart';
import 'package:shopping_test/models/cart_model.dart';
import 'package:shopping_test/widgets/add_icon_button.dart';

import '../../../../core/consts/const.dart';
import '../../../../models/item_model.dart';

class RecomendedItemCard extends StatelessWidget {
  const RecomendedItemCard({super.key, required this.item, required this.index});
  final Item item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        color: const Color(0xffF8F9FB),
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
                size: AppSize.s100,
                color: ColorManager.trinaryColor,
              ),
            ),
            const Divider(
              indent: AppSize.s16,
              endIndent: AppSize.s16,
            ),
            Text(
              ' ${item.name}',
              style: StyleManage.itemTitles14wbold(),
            ),
            const SizedBox(height: AppSize.s6),
            Text(
              maxLines: 1,
              '${item.annotation} |',
              style: StyleManage.itemDetails12w300(),
            ),

            const SizedBox(height: AppSize.s6),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: ColorManager.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    spreadRadius: 0.1,
                    blurRadius: 50,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: AppSize.s6,),
                  Row (children:
                  [ Text(item.unit,
                  style: StyleManage.itemDetails12w300(color: ColorManager.hintTextColor),),
                    Text(" \$${item.price}",
                    style: StyleManage.itemTitles14wbold(),)]),
                 AddIconButton(onPressed: () {
                   Const.addToCart(CartItem(itemIndex: index, quantity: 1));
                   ScaffoldMessenger.of(context).showSnackBar(

                       SnackBar(content: Text("${item.name} added"))
                   );
                 }),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
