import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'theme.dart';

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

enum FontFamily { Roboto, Amita}

class TextStyleOption {
  static get tg => null;

  static getStringFromEnum(dynamic fontFamily) {
    return fontFamily.toString().split('.')[1];
  }

  static TextStyle textWhiteCaption() => TextStyle(
    fontFamily: getStringFromEnum(FontFamily.Roboto),
    color: Colors.white,
    fontSize: FontSize.normalSize,
    height: FontHeight.normalHeight,
  );

  static TextStyle textWhiteTitleNormal(
      {FontFamily fontFamily = FontFamily.Roboto, bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? Colors.white.withOpacity(0.7) : Colors.white,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textWhiteTitle(
      {FontFamily fontFamily = FontFamily.Roboto, bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? Colors.white.withOpacity(0.7) : Colors.white,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textWhiteMedium1(
      {FontFamily fontFamily = FontFamily.Roboto, bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? Colors.white.withOpacity(0.7) : Colors.white,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textWhiteMedium2(
      {FontFamily fontFamily = FontFamily.Roboto, bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? Colors.white.withOpacity(0.7) : Colors.white,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textWhiteBody1(
      {FontFamily fontFamily = FontFamily.Roboto, bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? Colors.white.withOpacity(0.7) : Colors.white,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.w400,
        height: FontHeight.normalHeight,
      );

  static TextStyle textWhiteBody2(
      {FontFamily fontFamily = FontFamily.Roboto, bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? Colors.white.withOpacity(0.7) : Colors.white,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textWhiteSmallBody1(
      {FontFamily fontFamily = FontFamily.Roboto, bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? AppColors.offWhite : Colors.white,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textWhiteSmallBody2(
      {FontFamily fontFamily = FontFamily.Roboto, bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? Colors.white.withOpacity(0.7) : Colors.white,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textWhiteButton(
      {FontFamily fontFamily = FontFamily.Roboto, bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? Colors.white.withOpacity(0.7) : Colors.white,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textWhiteLabel1(
      {FontFamily fontFamily = FontFamily.Roboto, bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? Colors.white.withOpacity(0.7) : Colors.white,
        fontSize: FontSize.labelSmallSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textWhiteLabel2(
      {FontFamily fontFamily = FontFamily.Roboto, bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? Colors.white.withOpacity(0.7) : Colors.white,
        fontSize: FontSize.labelSmallSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textWhiteLarge1(
      {FontFamily fontFamily = FontFamily.Roboto, bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? Colors.white.withOpacity(0.7) : Colors.white,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textWhiteLarge2(
      {FontFamily fontFamily = FontFamily.Roboto, bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? Colors.white.withOpacity(0.7) : Colors.white,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textWhiteXLarge1(
      {FontFamily fontFamily = FontFamily.Roboto, bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? Colors.white.withOpacity(0.7) : Colors.white,
        fontSize: FontSize.xLargeSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textWhiteXLarge2(
      {FontFamily fontFamily = FontFamily.Roboto, bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? Colors.white.withOpacity(0.7) : Colors.white,
        fontSize: FontSize.xLargeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textWhiteWithSize(
      {@required double fontSize,
        double letterSpacing,
        FontWeight fontWeight,
        FontFamily fontFamily = FontFamily.Roboto,
        bool offWhite = false}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: offWhite ? Colors.white.withOpacity(0.7) : Colors.white,
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textTurquoiseCaption(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryColor,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textTurquoiseTitle(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryColor,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textTurquoiseTitleNormal(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryColor,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textTurquoiseMedium1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryColor,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textTurquoiseMedium2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryColor,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textTurquoiseBody1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryColor,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textTurquoiseBody2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryColor,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textTurquoiseButton(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryColor,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textTurquoiseBody3(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryColor,
        fontSize: 13,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textTurquoiseBody4(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryColor,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textTurquoiseWithSize(
      {@required double fontSize,
        FontWeight fontWeight,
        FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryColor,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  /// Primary Color

  static TextStyle textPrimaryCaption(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryText,
        fontSize: FontSize.normalSize,
        height: FontHeight.normalHeight,
      );

  static TextStyle textPrimaryXLarge1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryText,
        fontSize: FontSize.xLargeSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textPrimaryXLarge2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryText,
        fontSize: FontSize.xLargeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textPrimaryLarge1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryText,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textPrimaryLarge2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryText,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textPrimaryTitleNormal(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryText,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textPrimaryTitle(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryText,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textPrimaryMedium1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryText,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textPrimaryMedium2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryText,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textPrimaryBody1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryText,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textPrimaryBody2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryText,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textPrimarySmallBody1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryText,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textPrimarySmallBody2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryText,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textPrimaryLabelBody1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryText,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textPrimaryLabelBody2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.primaryText,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textPrimaryWithSize({
    @required double fontSize,
    FontWeight fontWeight,
    FontFamily fontFamily = FontFamily.Roboto,
    bool bold = false,
  }) {
    return TextStyle(
      fontFamily: getStringFromEnum(fontFamily),
      color: AppColors.primaryText,
      fontSize: fontSize,
      fontWeight: fontWeight ?? (bold ? FontWeight.w500 : FontWeight.normal),
      height: FontHeight.normalHeight,
    );
  }

  /// Business Black

  static TextStyle textBusinessXLarge1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.businessBlack,
        fontSize: FontSize.xLargeSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBusinessXLarge2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.businessBlack,
        fontSize: FontSize.xLargeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBusinessLarge1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.businessBlack,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBusinessLarge2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.businessBlack,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBusinessTitleNormal(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.businessBlack,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBusinessTitle(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.businessBlack,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBusinessMedium1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.businessBlack,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBusinessMedium2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.businessBlack,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBusinessBody1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.businessBlack,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBusinessBody2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.businessBlack,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBusinessSmallBody1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.businessBlack,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBusinessSmallBody2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.businessBlack,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBusinessLabelBody2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.businessBlack,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBusinessLabelBody1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.businessBlack,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBusinessButton(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.businessBlack,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBusinessWithSize({
    @required double fontSize,
    FontWeight fontWeight,
    FontFamily fontFamily = FontFamily.Roboto,
    bool bold = false,
  }) {
    return TextStyle(
      fontFamily: getStringFromEnum(fontFamily),
      color: AppColors.businessBlack,
      fontSize: fontSize,
      fontWeight: fontWeight ?? (bold ? FontWeight.w500 : FontWeight.normal),
      height: FontHeight.normalHeight,
    );
  }

  static TextStyle textSecondaryCaption(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.secondaryText,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryLarge1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.secondaryText,
        fontSize: FontSize.xLargeSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryLarge2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.secondaryText,
        fontSize: FontSize.xLargeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryTitleNormal(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.secondaryText,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryTitle(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.secondaryText,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryMedium1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.secondaryText,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryMedium2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.secondaryText,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryBody1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.secondaryText,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryBody2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.secondaryText,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondarySmallBody1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.secondaryText,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondarySmallBody2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.secondaryText,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryLabel1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grey600,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryLabel2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grey600,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryLabelMedium1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grey600,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryLabelMedium2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grey600,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryLabelLarge1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grey600,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryLabelLarge2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grey600,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryButton(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grey600,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSecondaryWithSize({
    @required double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    FontFamily fontFamily = FontFamily.Roboto,
    bool bold = false,
  }) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.secondaryText,
        fontSize: fontSize,
        fontWeight: fontWeight ?? (bold ? FontWeight.w500 : FontWeight.normal),
        fontStyle: fontStyle ?? FontStyle.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textHintMedium1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.hintText,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textHintMedium2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.hintText,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textHintBody1({FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.hintText,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textHintBody2({FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.hintText,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textBottomBarWithColor(
      {@required Color color, FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: color,
        fontSize: FontSize.smallSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textSearchHint(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        fontSize: FontSize.mediumSize,
        color: AppColors.hintText,
        height: FontHeight.normalHeight,
      );

  static TextStyle textGreyTwoCaption(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.border,
        fontSize: FontSize.normalSize,
        height: FontHeight.normalHeight,
      );

  static TextStyle textGreyTwoTitle(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayTwo,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textGreyTwoBody1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayTwo,
        fontSize: FontSize.normalSize,
        height: FontHeight.normalHeight,
      );

  static TextStyle textGreyTwoBody2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayTwo,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textGreyTwoButton(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayTwo,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textGreyTwoWithSize(
      {@required double fontSize,
        FontWeight fontWeight,
        FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayTwo,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textGrayFourCaption(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: FontSize.normalSize,
        height: FontHeight.normalHeight,
      );

  static TextStyle textGrayFourTitle(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textGrayFourBody1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: FontSize.normalSize,
        height: FontHeight.normalHeight,
      );

  static TextStyle textGrayFourBody2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textGrayFourButton(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textGrayFourWithSize(
      {@required double fontSize,
        FontWeight fontWeight,
        FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.grayFour,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textRedTitle({FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.redPassionate,
        fontSize: FontSize.largeSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textRedPinkBody1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.redPassionate,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textRedPinkBody2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.redPassionate,
        fontSize: FontSize.normalSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textRedPinkMedium1(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.redPassionate,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textRedPinkMedium2(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.redPassionate,
        fontSize: FontSize.mediumSize,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textRedPinkBody3(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.redPassionate,
        fontSize: 13,
        fontWeight: FontWeight.normal,
        height: FontHeight.normalHeight,
      );

  static TextStyle textRedPinkBody4(
      {FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: AppColors.redPassionate,
        fontSize: 13,
        fontWeight: FontWeight.w500,
        height: FontHeight.normalHeight,
      );

  static TextStyle textUnderline(
      {FontFamily fontFamily = FontFamily.Roboto,
        @required double fontSize,
        Color color}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
        color: color,
        decoration: TextDecoration.underline,
        height: FontHeight.normalHeight,
      );

  static TextStyle textColorWithSize(
      {@required double fontSize,
        double letterSpacing,
        FontWeight fontWeight,
        Color color,
        FontFamily fontFamily = FontFamily.Roboto}) =>
      TextStyle(
        fontFamily: getStringFromEnum(fontFamily),
        color: color ?? AppColors.primaryText,
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
        height: FontHeight.normalHeight,
      );
}

class FontSize {
  static const double labelSmallSize = 14.0;
  static const double smallSize = 16.0;
  static const double normalSize = 18.0;
  static const double mediumSize = 22.0;
  static const double largeSize = 26.0;
  static const double xLargeSize = 32.0;
  static const double xLargeSize2 = 40.0;
}

class FontHeight {
  static const double normalHeight = 1.3;
}

class IconStyleOption {
  static const double iconSize = 24.0;

  static Image imageAsset(String asset,
      {double width, double height, BoxFit fit, Color color}) {
    return Image.asset(
      asset,
      width: width,
      height: height,
      fit: fit,
      color: color,
    );
  }

  static Image imageAssetDefaultColor(String asset,
      {double width, double height, BoxFit fit}) {
    return Image.asset(
      asset,
      width: width,
      height: height,
      fit: fit,
      color: AppColors.iconColor,
    );
  }

  static Image imageBusinessAsset(String asset,
      {double width, double height, BoxFit fit}) {
    return Image.asset(
      asset,
      width: width,
      height: height,
      fit: fit,
      color: AppColors.businessBlack,
    );
  }

  static Image imageSecondPrimaryAsset(String asset,
      {double width, double height, BoxFit fit}) {
    return Image.asset(
      asset,
      width: width,
      height: height,
      fit: fit,
      color: AppColors.grey600,
    );
  }

  static Image imagePrimaryAsset(String asset,
      {double width, double height, BoxFit fit}) {
    return Image.asset(
      asset,
      width: width,
      height: height,
      fit: fit,
      color: AppColors.primaryColor,
    );
  }

  static Image imageGreenGlobalAsset(String asset,
      {double width, double height, BoxFit fit}) {
    return Image.asset(
      asset,
      width: width,
      height: height,
      fit: fit,
      color: AppColors.greenGlobal,
    );
  }

  /// Icons system or Icons from fluttericon.com
  static Icon iconAsset(IconData iconData, {double size, Color color}) {
    return Icon(
      iconData,
      size: size,
      color: color ?? AppColors.greyBlue,
    );
  }

  static Icon iconWhiteAsset(IconData iconData, {double size}){
    return Icon(
      iconData,
      size: size,
      color: AppColors.white,
    );
  }

  static Icon iconBusinessAsset(IconData iconData, {double size, Color color}) {
    return Icon(
      iconData,
      size: size,
      color: AppColors.businessBlack,
    );
  }

  static Icon iconSecondPrimaryAsset(IconData iconData,
      {double size, Color color}) {
    return Icon(
      iconData,
      size: size,
      color: AppColors.blueGrey,
    );
  }

  static Icon iconPrimaryAsset(IconData iconData, {double size, Color color}) {
    return Icon(
      iconData,
      size: size,
      color: AppColors.primaryColor,
    );
  }

  static Icon iconGreenGlobalAsset(IconData iconData,
      {double size, Color color}) {
    return Icon(
      iconData,
      size: size,
      color: AppColors.greenGlobal,
    );
  }
}

class ContainerWhiteBackground extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry borderRadius;
  final BoxBorder boxBorder;
  final bool primaryBorder;

  const ContainerWhiteBackground(
      {Key key,
        this.child,
        this.margin,
        this.padding,
        this.borderRadius,
        this.boxBorder,
        this.primaryBorder = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius:
        borderRadius ?? const BorderRadius.all(Radius.circular(4)),
        border: boxBorder ??
            Border.all(
                color:
                primaryBorder ? AppColors.primaryBorder : AppColors.border),
      ),
      child: child,
    );
  }
}

final double BottomAppBarHeight = 56.0;
