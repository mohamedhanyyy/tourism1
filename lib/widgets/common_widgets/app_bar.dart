import 'package:flutter/material.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/themes/styles.dart';

AppBar buildCommonAppBar({
  required String title,
  Widget icon =  const Icon(
    Icons.notifications,
    color: ColorConstants.greenColor,
  ),
  VoidCallback? onTap,
  TextStyle textStyle = ConstantTextStyles.mediumHeadlineBlackPoppinsTextStyle

}){
  return AppBar(
    title:  Text(title,
      style: textStyle,
    ),
    actions: [
      IconButton(
          onPressed: onTap,
          icon: icon)
    ],
  );
}