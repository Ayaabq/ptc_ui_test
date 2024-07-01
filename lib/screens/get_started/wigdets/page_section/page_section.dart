import 'package:flutter/material.dart';
import 'package:shopping_test/screens/get_started/wigdets/page_section/page_indicator.dart';

import '../../../../core/utils/string_manager.dart';
import '../../../../core/utils/style_maneger.dart';
import '../../../../core/utils/values_manager.dart';

class OnBoardingSection extends StatefulWidget {
  const OnBoardingSection({super.key});

  @override
  State<OnBoardingSection> createState() => _OnBoardingSectionState();
}

class _OnBoardingSectionState extends State<OnBoardingSection> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(AppPadding.p20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: List.generate(
                3,
                    (index) => _buildPage(
                  context,
                  StringManager.getStartedPageTitle[index],
                  StringManager.getStartedPageHint[index],
                ),
              ),
            ),
          ),
          PageIndicator(pageController: _pageController)
        ],
      ),
    );
  }
  Widget _buildPage(BuildContext context, String title, String hint) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: StyleManage.boldTextStyles30w700(),

        ),
        const SizedBox(height: AppPadding.p16),
        Text(
          hint,
          style: StyleManage.hintTextStyles18wbold(),
        ),
      ],
    );
  }
}
