import 'package:flutter/cupertino.dart';
import 'package:tourism1/themes/colors.dart';

const FontWeight regularFontWeight = FontWeight.w400;
const FontWeight mediumFontWeight = FontWeight.w500;
const FontWeight semiBoldFontWeight = FontWeight.w600;

class ConstantTextStyles {
  // headline text style
  static const TextStyle headLineTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontWeight: mediumFontWeight,
    fontFamily: 'Poppins',
    fontSize: 24,
  );

  static const TextStyle mediumSixteenPoppinsTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontWeight: mediumFontWeight,
    fontFamily: 'Poppins',
    fontSize: 16,
  );
  static const TextStyle regularSixteenPoppinsTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontWeight: regularFontWeight,
    fontFamily: 'Poppins',
    fontSize: 16,
  );
  static const TextStyle semiBoldEighteenPoppinsTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontWeight: semiBoldFontWeight,
    fontFamily: 'Poppins',
    fontSize: 18,
  );
}
