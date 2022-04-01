import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utils/paths/icons_path.dart';

class CommonLeadingAppBar extends StatelessWidget {
  const CommonLeadingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: SizedBox(
        height: 12,
        width: 6,
        child: InkWell(
          onTap: () {
            Get.back();
          },
          child: SvgPicture.asset(
            ConstantIcons.backArrow,
          ),
        ),
      ),
    );
  }
}
