import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/color_manager.dart';


class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 3,
      effect: const SlideEffect(
          spacing:  8.0,
          radius:  4.0,
          dotWidth:  38.0,
          dotHeight:  3 ,
          paintStyle:  PaintingStyle.stroke,

          dotColor:  Colors.grey,
          activeDotColor:  ColorManager.whiteColor
      ),
      onDotClicked: (index) {
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
    );
  }
}
