import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:phieucaphe/ui/theme/colors.dart';

class GradientOption {
  static Widget linearGradientWithPrimaryOpacity(
          double opacityBegin, double opacityEnd) =>
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.1, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Color.fromRGBO(6, 190, 189, opacityBegin),
              Color.fromRGBO(183, 206, 99, opacityEnd)
            ],
          ),
        ),
      );

  static LinearGradient linearGradientWithDartPrimaryOpacity(
          double opacityBegin, double opacityEnd) =>
      LinearGradient(
        // Where the linear gradient begins and ends
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        // Add one stop for each color. Stops should increase from 0 to 1
        stops: [0.1, 0.9],
        colors: [
          // Colors are easy thanks to Flutter's Colors class.
          Color.fromRGBO(104, 90, 160, opacityBegin),
          Color.fromRGBO(6, 190, 189, opacityEnd)
        ],
      );

  static Widget gradientWithDartPrimaryOpacity(
          double opacityBegin, double opacityEnd) =>
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.3, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Color.fromRGBO(104, 90, 160, opacityBegin),
              Color.fromRGBO(6, 190, 189, opacityEnd)
            ],
          ),
        ),
      );
}

enum FontFamily { Lato, DINCondensed }

class TextStyleOption {
  static getStringFromEnum(dynamic fontFamily) {
    return fontFamily.toString().split('.')[1];
  }

  static TextStyle textWhiteCaption() =>
      const TextStyle(fontFamily: "Lato", color: Colors.white, fontSize: 15);

  static TextStyle textWhiteTitle({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textWhiteTitleNormal(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: Colors.white,
        fontSize: 18,
      );

  static TextStyle textWhiteBody1({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: Colors.white,
        fontSize: 15,
      );

  static TextStyle textWhiteBody2({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textWhiteBody3({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: Colors.white,
        fontSize: 13,
        fontWeight: FontWeight.w700,
      );

  static TextStyle textWhiteBody4({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: Colors.white,
        fontSize: 13,
      );

  static TextStyle textWhiteButton({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textWhiteWithSize(
          {@required double fontSize,
          double letterSpacing,
          FontWeight fontWeight,
          FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: Colors.white,
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
      );

  static TextStyle textTurquoiseCaption(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
          fontFamily: getStringFromEnum(fontFamily),
          color: AppColors.turquoise,
          fontSize: 15);

  static TextStyle textTurquoiseTitle(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.turquoise,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textTurquoiseBody1(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.turquoise,
        fontSize: 15,
      );

  static TextStyle textTurquoiseBody2(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.turquoise,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textTurquoiseButton(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.turquoise,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textTurquoiseBody3(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.turquoise,
        fontSize: 13,
      );

  static TextStyle textTurquoiseBody4(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.turquoise,
        fontSize: 13,
        fontWeight: FontWeight.w700,
      );

  static TextStyle textTurquoiseWithSize(
          {@required double fontSize,
          FontWeight fontWeight,
          FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.turquoise,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
      );

  static TextStyle textGreyBlueCaption(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
          fontFamily: getStringFromEnum(fontFamily),
          color: AppColors.greyBlue,
          fontSize: 15);

  static TextStyle textGreyBlueTitle(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGreyBlueTitleNormal(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: 18,
        fontWeight: FontWeight.normal,
      );

  static TextStyle textGreyBlueBody1(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: 15,
      );

  static TextStyle textGreyBlueBody2(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGreyBlueBody3(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: 13,
      );

  static TextStyle textGreyBlueBody4(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
          fontFamily: getStringFromEnum(fontFamily),
          color: AppColors.greyBlue,
          fontSize: 13,
          fontWeight: FontWeight.w700);

  static TextStyle textGreyBlueLabel1(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: 12,
      );
  static TextStyle textGreyBlueBody5(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: 24,
      );

  static TextStyle textGreyBlueLabel2(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGreyBlueButton(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGreyBlueWithSize(
      {@required double fontSize,
      FontWeight fontWeight,
      FontFamily fontFamily = FontFamily.Lato}) {
    return TextStyle(
      fontFamily: getStringFromEnum(fontFamily),
      color: AppColors.greyBlue,
      fontSize: fontSize,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  static TextStyle textBlueGreyCaption(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.blueGrey,
        fontSize: 15,
      );

  static TextStyle textBlueGreyTitle(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.blueGrey,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textBlueGreyBody1(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.blueGrey,
        fontSize: 15,
      );

  static TextStyle textBlueGreyBody2(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.blueGrey,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textBlueGreyBody3(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.blueGrey,
        fontSize: 13,
      );

  static TextStyle textBlueGreyBody4(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
          fontFamily: getStringFromEnum(fontFamily),
          color: AppColors.blueGrey,
          fontSize: 13,
          fontWeight: FontWeight.w700);

  static TextStyle textBlueGreyLabel1(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.blueGrey,
        fontSize: 12,
      );

  static TextStyle textBlueGreyLabel2(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.blueGrey,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textBlueGreyButton(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.blueGrey,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textBlueGreyWithSize(
          {@required double fontSize,
          FontWeight fontWeight,
          FontStyle fontStyle,
          FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.blueGrey,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontStyle: fontStyle ?? FontStyle.normal,
      );

  static TextStyle textBottomBarWithColor(
          {@required Color color, FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: color,
        fontSize: 10,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textSearchHint({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        fontSize: 15,
        color: AppColors.silver,
      );

  static TextStyle textGreyTwoCaption(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.silver,
        fontSize: 15,
      );

  static TextStyle textGreyTwoTitle(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayTwo,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGreyTwoBody1(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayTwo,
        fontSize: 15,
      );

  static TextStyle textGreyTwoBody2(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayTwo,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGreyTwoButton(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayTwo,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGreyTwoWithSize(
          {@required double fontSize,
          FontWeight fontWeight,
          FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayTwo,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
      );

  static TextStyle textGrayFourCaption(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: 15,
      );

  static TextStyle textGrayFourTitle(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGrayFourBody1(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: 15,
      );

  static TextStyle textGrayFourBody2(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGrayFourButton(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGrayFourWithSize(
          {@required double fontSize,
          FontWeight fontWeight,
          FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
      );

  static TextStyle textRedTitle({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.redPink,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textRedPinkBody1(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.redPink,
        fontSize: 15,
      );

  static TextStyle textRedPinkBody2(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.redPink,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textUnderline(
          {FontFamily fontFamily = FontFamily.Lato,
          @required double fontSize,
          Color color}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        fontSize: fontSize,
        color: color,
        decoration: TextDecoration.underline,
      );
}

final double BottomAppBarHeight = 50.0;
