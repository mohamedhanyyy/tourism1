import 'package:flutter/material.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/themes/styles.dart';

AppBar tourismFeedAppBarWidget(){
  return AppBar(
    title: const Text(
      'Tourism Feed',
      style: ConstantTextStyles.mediumHeadlineBlackPoppinsTextStyle,
    ),
    actions: [
      IconButton(
          onPressed: () {
          },
          icon: const Icon(
            Icons.notifications,
            color: ColorConstants.greenColor,
          ))
    ],
  );
}