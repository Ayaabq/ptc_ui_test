import 'package:flutter/material.dart';

import '../core/utils/color_manager.dart';

class AddIconButton extends StatelessWidget {
  const AddIconButton({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 32,
      width: 32,
      child: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.add,
          size: 24,
          color: ColorManager.whiteColor,
        ),
        padding: EdgeInsets.zero,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              ColorManager.primaryColor),
        ),
      ),
    );
  }
}
