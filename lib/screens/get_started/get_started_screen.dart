import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/assets_manager.dart';
import 'package:shopping_test/core/utils/color_manager.dart';
import 'package:shopping_test/core/utils/screen_size_util.dart';

import 'package:shopping_test/core/utils/values_manager.dart';
import 'package:shopping_test/screens/get_started/wigdets/get_started_button.dart';
import 'package:shopping_test/screens/get_started/wigdets/page_section/page_section.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSizeUtil.init(context);
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p32),
        child: Column(
          children: [
            const Expanded(flex: 5, child: OnBoardingSection()),
            Image.asset(
              AssetsManager.onBoarding,
              height: ScreenSizeUtil.dynamicHeight(0.45),
            ),
            const Expanded(
              child: GetStartedButton(),
            )
          ],
        ),
      ),
    );
  }
}
