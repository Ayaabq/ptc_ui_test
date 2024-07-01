import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/style_maneger.dart';

import '../core/utils/color_manager.dart';

class CustomDropDown extends StatefulWidget {
   CustomDropDown({super.key, required this.selectedValue, required this.items});
  final List<String> items;
   String selectedValue;
  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {

  @override
  Widget build(BuildContext context) {
    return  DropdownButton<String>(
      value: widget.selectedValue,
      icon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: ColorManager.whiteColor, // White color
      ),
      style: StyleManage.whiteButtonTexts16w600(color: ColorManager.whiteColor),
      onChanged: (String? newValue) {
        setState(() {
          widget.selectedValue = newValue!;
        });
      },
      dropdownColor: ColorManager.searchColor, // Dropdown background color
      items:widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
