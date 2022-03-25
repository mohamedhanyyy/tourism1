import 'package:flutter/material.dart';
import 'package:tourism1/themes/colors.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  Icon? prefixIcon;
  Icon? suffixIcon;
  Icon? suffix;
  Color? fillColor = ColorConstants.whiteColor;
  String? labelText;

  String? hintText;

  double? radius = 0;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: fillColor,
        suffix: suffix,
        filled: true,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius!),
          ),
        ),
      ),
    );
  }

  CustomTextField({
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor,
    this.labelText,
    this.hintText,
    this.radius,
    this.suffix,
  });
}
class CustomCommentTextField extends StatelessWidget {
  TextEditingController? controller;
  Icon? prefixIcon;
  Icon? suffixIcon;
  Icon? suffix;
  Color? fillColor = ColorConstants.whiteColor;
  String? labelText;

  String? hintText;


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: fillColor,
        suffix: suffix,
        filled: true,
        labelText: labelText,
        border: InputBorder.none
      ),
    );
  }

  CustomCommentTextField({
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor,
    this.labelText,
    this.hintText,
    this.suffix,
  });
}
