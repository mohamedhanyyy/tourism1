import 'package:flutter/cupertino.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/utils/paths/images_path.dart';

class ConstantPics {
  static Widget commonAssetImage({
    double width = 90,
    double height = 90.0,
    String assetImagePath = ConstantImages.nature
  }) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
        image: AssetImage(assetImagePath),
      )),
    );
  }
}
