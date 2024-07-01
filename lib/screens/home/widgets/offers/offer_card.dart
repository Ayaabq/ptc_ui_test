import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/screen_size_util.dart';
import 'package:shopping_test/core/utils/style_maneger.dart';
import 'package:shopping_test/core/utils/values_manager.dart';
import 'package:shopping_test/models/offer_card_model.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/string_manager.dart';




class OfferCard extends StatelessWidget {
  const OfferCard({super.key, required this.offer});
  final OfferCardModel offer;
  @override
  Widget build(BuildContext context) {
    ScreenSizeUtil.init(context);
    return Container(
      width: ScreenSizeUtil.dynamicWidth(.8),
      decoration: BoxDecoration(
        color: ColorManager.secondaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child:   Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Row(
          children: [
            const Icon(
              Icons.image,
              size: AppSize.s50,
              color: ColorManager.whiteColor,
            ),
            const SizedBox(width: AppSize.s16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  StringManager.get,
                  style: StyleManage.cardSubTitles20w300()
                ),
                Text(
                  offer.offer.toString()+StringManager.off50,
                  style: StyleManage.cardTitles26w600()
                ),
                Text(
                  StringManager.onFOrder(offer.orderCount),
                  style:StyleManage.cardSubLabels16w300()
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
