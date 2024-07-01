import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_test/core/utils/color_manager.dart';
import 'package:shopping_test/core/utils/screen_size_util.dart';
import 'package:shopping_test/core/utils/values_manager.dart';
import 'package:shopping_test/screens/cart/widgets/cart_item.dart';
import 'package:shopping_test/screens/home/widgets/home_app_bar.dart';

import 'package:shopping_test/screens/home/widgets/offers/offers_section.dart';

import 'package:shopping_test/screens/home/widgets/overview/overview_section.dart';
import 'package:shopping_test/screens/home/widgets/package/package_section.dart';
import 'package:shopping_test/screens/home/widgets/recomended/recommended_section.dart';
import 'package:shopping_test/screens/home/widgets/search_text_field.dart';
import 'package:shopping_test/screens/home/widgets/sliver_title.dart';
import 'package:shopping_test/widgets/custom_sliver_app_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedAddress = 'Green Way 3000, Sylhet';
  String selectedTime = '1 Hour';
  @override
  Widget build(BuildContext context) {
    ScreenSizeUtil.init(context);
    return   const CustomScrollView(
      slivers: [

        CustomSliverAppBar(
          haveSearch: false,
          child:HomeAppBar(),
        ),

        OverviewSection(),
        OffersSection(),
        SliverTitle(title: "Recommended"),
        RecommendedSection(),
        SliverTitle(title: "Deals & Packages"),
        PackageSection(),
        SliverToBoxAdapter(child: SizedBox(height: AppSize.s80,),)

      ],
    );
  }
}
