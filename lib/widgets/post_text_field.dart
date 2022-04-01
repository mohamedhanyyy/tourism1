import 'package:flutter/material.dart';

import '../themes/colors.dart';

class PostTextField extends StatelessWidget{

  TextEditingController? controller;
  Icon? prefixIcon;
  Icon? suffixIcon;
  Color? fillColor = ColorConstants.whiteColor;
  String? labelText ;
  String? hintText ;
  TextStyle? hintStyle ;
  double? radius = 0;
  bool border=false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 5,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
         fillColor: fillColor,
        filled: true,
        labelText: labelText,
        prefix: prefixIcon,
        hintStyle: hintStyle,
        border: border?OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius!),
          ),
        ):InputBorder.none,
      ),
    );
  }

  PostTextField(
      {this.controller,
        this.prefixIcon,
        this.suffixIcon,
        this.fillColor,
        this.labelText,
        this.hintText,
        this.radius,
        this.hintStyle,
       required this.border,

      });
}

