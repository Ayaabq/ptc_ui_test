import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/color_manager.dart';
import 'package:shopping_test/core/utils/style_maneger.dart';
import 'package:shopping_test/core/utils/values_manager.dart';

class OverviewCard extends StatelessWidget {
  final Color color;
  final int number;
  final String unit;
  final String discreption;

  const OverviewCard({super.key, required this.color, required this.number, required this.unit, required this.discreption});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(AppPadding.p24),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number.toString()+ unit,
            style:StyleManage.cardTitles26w600(color: ColorManager.blackColor)
          ),
          const SizedBox(height: 8),
          Text(
            discreption,
            style:StyleManage.cardSubLabels16w300(color: ColorManager.blackColor)
          ),
        ],
      ),
    );
  }
}
