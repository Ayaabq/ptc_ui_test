import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/color_manager.dart';
import 'package:shopping_test/core/utils/style_maneger.dart';
import 'package:shopping_test/core/utils/values_manager.dart';

class CartCheckout extends StatelessWidget {
  const CartCheckout({super.key, required this.haveMore, required this.onMore});
 final bool haveMore;
 final void Function() onMore;
  @override
  Widget build(BuildContext context) {
    return   Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Column(
        children: [
          if (haveMore)
            TextButton(
              onPressed:onMore,
              child:  Text('More',
              style: StyleManage.itemDetails12w300(
                color: ColorManager.primaryColor
              ),),
            ),
          Container(
            padding: const EdgeInsets.all(AppPadding.p16),
            margin: const EdgeInsets.only(top: AppPadding.p8),
            decoration: const BoxDecoration(
              color: ColorManager.cardColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),

            ),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Subtotal'),
                    Text('\$35.96'),
                  ],
                ),
                const SizedBox(height: AppSize.s16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery'),
                    Text('\$2.00'),
                  ],
                ),
                const SizedBox(height: AppSize.s16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$37.96',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: AppSize.s16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Proceed To Checkout'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(ColorManager.primaryColor),
                      foregroundColor: MaterialStateProperty.all(ColorManager.whiteColor)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
