import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/colors.dart';

class CommonLeadingAppBar extends StatelessWidget {
  const CommonLeadingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
        color: ColorConstants.blackColor,
      ),
      onPressed: () {
        Get.back();
      },
    );
  }
}
