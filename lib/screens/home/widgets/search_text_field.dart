import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/values_manager.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: AppPadding.p18),
          fillColor: ColorManager.searchColor,
          filled: true,
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(28), ),

          hintText: 'Search Products or store',
          hintStyle: const TextStyle(color: ColorManager.hintTextColor ),
          prefixIcon: const Icon(Icons.search, color: Colors.white),
        ));
  }
}
