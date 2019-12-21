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
  static double title_size = 40;
  static double text_large_size = 28;
  static double text_small_size = 16;
  static double text_size = 20;

  static getStringFromEnum(dynamic fontFamily) {
    return fontFamily.toString().split('.')[1];
  }

  static TextStyle textWhiteCaption() =>
      const TextStyle(fontFamily: "Lato", color: Colors.white, fontSize: 15);

  static TextStyle textWhiteTitle({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: Colors.white,
        fontSize: text_large_size,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textWhiteTitleNormal(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: Colors.white,
        fontSize: text_large_size,
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
        fontSize: text_size,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textWhiteBody3({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: Colors.white,
        fontSize: text_small_size,
        fontWeight: FontWeight.w700,
      );

  static TextStyle textWhiteBody4({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: Colors.white,
        fontSize: text_small_size,
      );

  static TextStyle textWhiteButton({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: Colors.white,
        fontSize: text_size,
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

  static TextStyle textGreyBlueCaption(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
          fontFamily: getStringFromEnum(fontFamily),
          color: AppColors.greyBlue,
          fontSize: text_size);

  static TextStyle textGreyBlueTitle(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: text_large_size,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGreyBlueTitleNormal(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: text_large_size,
        fontWeight: FontWeight.normal,
      );

  static TextStyle textGreyBlueBody1(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: text_large_size,
      );

  static TextStyle textGreyBlueBody2(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: text_large_size,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGreyBlueBody3(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: text_small_size,
      );

  static TextStyle textGreyBlueBody4(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
          fontFamily: getStringFromEnum(fontFamily),
          color: AppColors.greyBlue,
          fontSize: text_small_size,
          fontWeight: FontWeight.w700);

  static TextStyle textGreyBlueLabel1(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: text_small_size,
      );
  static TextStyle textGreyBlueBody5(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: text_large_size,
      );

  static TextStyle textGreyBlueLabel2(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.greyBlue,
        fontSize: text_small_size,
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

  static TextStyle textSearchHint({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        fontSize: text_size,
        color: AppColors.silver,
      );

  static TextStyle textGreyTwoCaption(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.silver,
        fontSize: text_large_size,
      );

  static TextStyle textGreyTwoTitle(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayTwo,
        fontSize: text_large_size,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGreyTwoBody1(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayTwo,
        fontSize: text_size,
      );

  static TextStyle textGreyTwoBody2(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayTwo,
        fontSize: text_size,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGreyTwoButton(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayTwo,
        fontSize: text_size,
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
        fontSize: text_large_size,
      );

  static TextStyle textGrayFourTitle(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: text_large_size,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGrayFourBody1(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: text_size,
      );

  static TextStyle textGrayFourBody2(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: text_size,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textGrayFourButton(
          {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: text_size,
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

  static TextStyle textCharcoalWithSize(
      {@required double fontSize,
        FontWeight fontWeight,
        FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.charcoal,
        fontSize: fontSize ?? text_large_size,
        fontWeight: fontWeight ?? FontWeight.normal,
      );

  static TextStyle textCharcoalBigSize({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.charcoal,
        fontSize: title_size,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textCharcoalBigSizeNormal({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.charcoal,
        fontSize: title_size,
        fontWeight: FontWeight.w400,
      );

  static TextStyle textCharcoalTitle({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.charcoal,
        fontSize: text_large_size,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textCharcoalTitleNormal({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.charcoal,
        fontSize: text_large_size,
        fontWeight: FontWeight.w400,
      );

  static TextStyle textCharcoalBody1(
      {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.charcoal,
        fontSize: text_size,
      );

  static TextStyle textCharcoalBody2(
      {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.charcoal,
        fontSize: text_size,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textCharcoalBody3(
      {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.charcoal,
        fontSize: text_small_size,
      );

  static TextStyle textCharcoalBody4(
      {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
          fontFamily: getStringFromEnum(fontFamily),
          color: AppColors.charcoal,
          fontSize: text_small_size,
          fontWeight: FontWeight.w700);

  static TextStyle textBlackWithSize(
      {@required double fontSize,
        FontWeight fontWeight,
        FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.black,
        fontSize: fontSize ?? text_large_size,
        fontWeight: fontWeight ?? FontWeight.normal,
      );

  static TextStyle textBlackBigSize({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.black,
        fontSize: title_size,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textBlackBigSizeNormal({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.black,
        fontSize: title_size,
        fontWeight: FontWeight.w400,
      );

  static TextStyle textBlackTitle({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.black,
        fontSize: text_large_size,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textBlackTitleNormal({FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.black,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      );

  static TextStyle textBlackBody1(
      {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.black,
        fontSize: text_size,
      );

  static TextStyle textBlackBody2(
      {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.black,
        fontSize: text_size,
        fontWeight: FontWeight.bold,
      );

  static TextStyle textBlackBody3(
      {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.black,
        fontSize: text_small_size,
      );

  static TextStyle textBlackBody4(
      {FontFamily fontFamily = FontFamily.Lato}) =>
      TextStyle(
          fontFamily: getStringFromEnum(fontFamily),
          color: AppColors.black,
          fontSize: text_small_size,
          fontWeight: FontWeight.w700);

}
