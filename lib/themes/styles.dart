import 'package:flutter/cupertino.dart';
import 'package:tourism1/themes/colors.dart';

const FontWeight regularFontWeight = FontWeight.w400;
const FontWeight mediumFontWeight = FontWeight.w500;
const FontWeight semiBoldFontWeight = FontWeight.w600;
const FontWeight normalFontWeight = FontWeight.normal;
const FontWeight boldFontWeight = FontWeight.bold;
// TODO Font Weights

class ConstantTextStyles {
  ConstantTextStyles._();

  // TODO headline text style
  static const TextStyle headLineTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontFamily: FontFamily.poppinsSemiBold,
    fontSize: 20,
  );

  ///  Medium Black text styles
  static const TextStyle mediumSixteenBlackPoppinsTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontFamily: FontFamily.poppinsMedium,
    fontSize: 16,
  );
  static const TextStyle mediumFourteenBlackPoppinsTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontFamily: FontFamily.poppinsMedium,
    fontSize: 14,
  );

  ///  Regular Black text style
  static const TextStyle regularFourteenBlackPoppinsTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontFamily: FontFamily.poppinsRegular,
    fontSize: 14,
  );
  static const TextStyle regularSixteenPoppinsTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontFamily: FontFamily.poppinsRegular,
    fontSize: 16,
  );
  static const TextStyle regularSixteenDefaultTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontWeight: regularFontWeight,
    fontSize: 16,
  );
  static const TextStyle mediumSixteenDefaultTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontWeight: mediumFontWeight,
    fontSize: 16,
  );
  static const TextStyle boldSixteenDefaultTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontWeight: boldFontWeight,
    fontSize: 16,
  );

  ///  TODO SemiBold Black text styles
  static const TextStyle semiBoldEighteenPoppinsTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontFamily: FontFamily.poppinsSemiBold,
    fontSize: 18,
  );
  static const TextStyle semiBoldSixteenPoppinsTextStyle = TextStyle(
    color: ColorConstants.blackColor,
    fontFamily: FontFamily.poppinsSemiBold,
    fontSize: 16,
  );

  ///  [TextStyle] White text styles
  static const TextStyle mediumFourteenWhitePoppinsTextStyle = TextStyle(
    color: ColorConstants.whiteColor,
    fontFamily: FontFamily.poppinsMedium,
    fontSize: 14,
  );

  /// Green text styles
  static const TextStyle semiBoldFourteenGreenPoppinsTextStyle = TextStyle(
    color: ColorConstants.greenColor,
    fontFamily: FontFamily.poppinsSemiBold,
    fontSize: 14,
  );
  static const TextStyle semiBoldFourteenGreenDefaultTextStyle = TextStyle(
    color: ColorConstants.greenColor,
    fontWeight: semiBoldFontWeight,

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

class FontFamily {
  static const String poppinsRegular = 'Poppins-Regular';
  static const String poppinsMedium = 'Poppins-Medium';
  static const String poppinsSemiBold = 'Poppins-SemiBold';
}
