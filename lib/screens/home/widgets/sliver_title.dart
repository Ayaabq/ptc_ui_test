import 'package:flutter/material.dart';

import '../../../core/utils/style_maneger.dart';
import '../../../core/utils/values_manager.dart';

class SliverTitle extends StatelessWidget {
  const SliverTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(AppPadding.p8),
      sliver: SliverToBoxAdapter(

        child: Text(title,
          style: StyleManage.sectionTitels20w700(),),
      ),
    );
  }
}
