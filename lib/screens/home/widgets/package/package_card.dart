import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/color_manager.dart';
import 'package:shopping_test/core/utils/style_maneger.dart';
import 'package:shopping_test/core/utils/values_manager.dart';
import 'package:shopping_test/models/package_model.dart';
import 'package:shopping_test/widgets/add_icon_button.dart';

class PackageCard extends StatelessWidget {
  const PackageCard({super.key, required this.package});
  final PackageModel package;
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
                AddIconButton(onPressed: (){})
              ],
            ),
            Text(
              '\$ ${package.price}',
              style: StyleManage.itemTitles14wbold(),
            ),
            const SizedBox(height: AppSize.s6),
            Text(
              '${package.itemName} |',
              style: StyleManage.itemDetails12w300(),
            ),
            Text(
              ' ${package.bundle} bundle',
              style: StyleManage.itemDetails12w300(),
            ),
          ],
        ),
      ),
    );
  }
}
