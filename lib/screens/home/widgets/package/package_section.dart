import 'package:flutter/material.dart';
import 'package:shopping_test/screens/home/widgets/package/package_card.dart';

import '../../../../core/consts/const.dart';
import '../../../../core/utils/values_manager.dart';

class PackageSection extends StatelessWidget {
  const PackageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverPadding(
      padding: const EdgeInsets.all( AppPadding.p8),
      sliver: SliverGrid(

          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: AppSize.s16,
            crossAxisSpacing: AppSize.s16,
            childAspectRatio: 0.8,
          ),
          delegate: SliverChildBuilderDelegate(
              childCount: Const.packages.length, (context, index) {
            final package = Const.packages[index];
            return PackageCard(package: package);
          })),
    );
  }
}
