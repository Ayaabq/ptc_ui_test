import 'package:flutter/material.dart';
import 'package:shopping_test/screens/home/widgets/recomended/recomended_item_card.dart';

import '../../../../core/consts/const.dart';
import '../../../../core/utils/values_manager.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return    SliverToBoxAdapter(
      child: SizedBox(
        height:260,
        child: ListView.separated(
            padding: const EdgeInsets.all(AppPadding.p20),
            itemCount: Const.items.length,
            separatorBuilder: (_, __) => const SizedBox(
              width: AppSize.s20,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => RecomendedItemCard(item: Const.items[index], index: index,)),
      ),
    );
  }
}
