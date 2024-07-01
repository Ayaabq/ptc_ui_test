import 'package:flutter/material.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/values_manager.dart';
import 'overview_card.dart';

class OverviewSection extends StatelessWidget {
  const OverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: Padding(
          padding: EdgeInsets.all(AppPadding.p20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OverviewCard(
                color: ColorManager.secondaryColor,
                number: 346,
                unit: ' USD',
                discreption: "Your total savings",
              ),
              SizedBox(
                width: AppSize.s20,
              ),
              OverviewCard(
                color: ColorManager.trinaryColor,
                number: 215,
                unit: ' HRS',
                discreption: "Your time saved",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
