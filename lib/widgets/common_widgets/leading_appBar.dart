import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/paths/icons_path.dart';

class CommonLeadingAppBar extends StatelessWidget {
  const CommonLeadingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      ConstantIcons.backArrow,
    );
  }
}
