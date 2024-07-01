import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/color_manager.dart';
import 'package:shopping_test/core/utils/style_maneger.dart';
import 'package:shopping_test/widgets/drop_down_item.dart';
import 'package:shopping_test/screens/home/widgets/search_text_field.dart';

import '../../../core/utils/values_manager.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  String selectedAddress = 'Green Way 3000, Sylhet';
  String selectedTime = '1 Hour';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SearchTextField(),
          const SizedBox(
            height: AppSize.s30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First Line
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('DELIVERY TO',
                      style: StyleManage.hintTextStyles18wbold(
                          size: 12, fontWeight: FontWeight.w300)),
                  Text(
                    'WITHIN',
                    style: StyleManage.hintTextStyles18wbold(
                        size: 12, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.s8),
              // Second Line
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomDropDown(
                      selectedValue: selectedAddress,
                      items: const <String>[
                        'Green Way 3000, Sylhet',
                        'Option 2',
                        'Option 3'
                      ]),
                  CustomDropDown(
                      selectedValue: selectedTime,
                      items: const <String>['1 Hour', '2 Hours', '3 Hours'])
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
