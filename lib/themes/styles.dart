import 'package:flutter/cupertino.dart';
import 'package:tourism1/themes/colors.dart';

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
}

class FontFamily {
  static const String poppinsRegular = 'Poppins-Regular';
  static const String poppinsMedium = 'Poppins-Medium';
  static const String poppinsSemiBold = 'Poppins-SemiBold';
}
