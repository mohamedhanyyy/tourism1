import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

class AppThemes {
  static ThemeData whiteTheme = ThemeData(
      primaryColor: ColorConstants.greenColor,
      primarySwatch: Colors.green,
      appBarTheme: const AppBarTheme(
          backgroundColor: ColorConstants.whiteColor,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: ColorConstants.whiteColor,
          )));
}