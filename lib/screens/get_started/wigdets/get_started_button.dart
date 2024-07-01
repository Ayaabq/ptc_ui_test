import 'package:flutter/material.dart';
import 'package:shopping_test/screens/core/nav_bar_screen.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_maneger.dart';
import '../../../core/utils/values_manager.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>const NavbarScreen()));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.r20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              StringManager.getStarted,
              style: StyleManage.whiteButtonTexts16w600(),
            ),
            const Icon(
              Icons.arrow_forward,
              size: AppSize.s18,
              color: ColorManager.blackColor,
            ),
          ],
        ),
      ),
    );
  }
}
