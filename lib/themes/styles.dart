import 'package:flutter/cupertino.dart';
import 'package:tourism1/themes/colors.dart';

const FontWeight regularFontWeight = FontWeight.w400;
const FontWeight mediumFontWeight = FontWeight.w500;
const FontWeight semiBoldFontWeight = FontWeight.w600;
const FontWeight normalFontWeight = FontWeight.normal;

class ConstantTextStyles {
  // TODO headline text style
  static const TextStyle headLineTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontWeight: mediumFontWeight,
    fontFamily: 'Poppins',
    fontSize: 20,
  );

  // TODO Black text styles
  static const TextStyle mediumSixteenBlackPoppinsTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontWeight: mediumFontWeight,
    fontFamily: 'Poppins',
    fontSize: 16,
  );  static const TextStyle mediumFourteenBlackPoppinsTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontWeight: mediumFontWeight,
    fontFamily: 'Poppins',
    fontSize: 14,
  );  static const TextStyle regularFourteenBlackPoppinsTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontWeight: mediumFontWeight,
    fontFamily: 'Poppins',
    fontSize: 14,
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
  );  static const TextStyle semiBoldSixteenPoppinsTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontWeight: semiBoldFontWeight,
    fontFamily: 'Poppins',
    fontSize: 16,
  );

  // TODO White text styles
  static const TextStyle mediumFourteenWhitePoppinsTextStyle = TextStyle(
    color: ColorConstants.whiteColor,
    fontWeight: mediumFontWeight,
    fontFamily: 'Poppins',
    fontSize: 14,
  );
  // TODO Green text styles
  static const TextStyle semiBoldFourteenGreenPoppinsTextStyle = TextStyle(
    color: ColorConstants.greenColor,
    fontWeight: semiBoldFontWeight,
    fontFamily: 'Poppins',
    fontSize: 14,
  );
  // this hint style is mostly used with textForm Fields
  static const TextStyle hintLightGrayTextStyle = TextStyle(
    color: ColorConstants.mediumGreyColor,
    fontWeight: normalFontWeight,
    fontSize: 14,
  );

  static  TextStyle hintWhiteTextStyle = TextStyle(
    color: ColorConstants.whiteColor.withOpacity(.7),
    fontWeight: normalFontWeight,

    fontSize: 14,
  );

  static  const TextStyle headlineWhiteTextStyle = TextStyle(
    color: ColorConstants.whiteColor,
    fontWeight: semiBoldFontWeight,

    fontSize: 18,
  );
}
