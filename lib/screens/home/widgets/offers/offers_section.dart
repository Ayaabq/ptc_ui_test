import 'package:flutter/material.dart';

import '../../../../core/consts/const.dart';
import '../../../../core/utils/values_manager.dart';
import 'offer_card.dart';

class OffersSection extends StatelessWidget {
  const OffersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: ListView.separated(
            padding: const EdgeInsets.all(AppPadding.p20),
            itemCount: Const.offers.length,
            separatorBuilder: (_, __) => const SizedBox(
              width: AppSize.s20,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => OfferCard(
              offer: Const.offers[index],
            )),
      ),
    );
  }
}
