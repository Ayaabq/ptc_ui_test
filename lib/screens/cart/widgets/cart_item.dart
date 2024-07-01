import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/style_maneger.dart';
import 'package:shopping_test/models/cart_model.dart';

import '../../../core/consts/const.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/values_manager.dart';
import '../../../models/item_model.dart';

class ShoppingCartItem extends StatelessWidget {
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;
  final CartItem cartItem;
  const ShoppingCartItem({
    super.key,
    required this.onIncrease,
    required this.onDecrease,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          // Image placeholder
          const Icon(
            Icons.image,
            size: AppSize.s40,
            color: ColorManager.primaryColor,
          ),
          const SizedBox(width: AppSize.s20),

          // Title and price
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(Const.items[cartItem.itemIndex].name, style: StyleManage.itemTitles14wbold()),
                const SizedBox(height: 4.0),
                Text('\$${Const.items[cartItem.itemIndex].price}',
                    style: StyleManage.itemTitles14wbold(
                        color: ColorManager.hintTextColor,
                        fontWeight: FontWeight.normal)),
              ],
            ),
          ),
          const SizedBox(width: 16.0),

          // Quantity selector
          Row(
            children: [
              IconButton(
                onPressed: onDecrease,
                icon: const Icon(Icons.remove),
                color: ColorManager.hintTextColor,
              ),
              Text(cartItem.quantity.toString(),
                  style: StyleManage.whiteButtonTexts16w600()),
              IconButton(
                onPressed: onIncrease,
                icon: const Icon(Icons.add),
                color: ColorManager.hintTextColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
