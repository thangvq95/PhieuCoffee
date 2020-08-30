import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'app_decorator.dart';
import 'colors.dart';

// ignore: must_be_immutable
class ThemeState{
  ThemeData theme;
  final double _devicePixelRatio;
  final double _spacingUnit; // Use getters below
  final double _cornerRadiusDefault; // Use getters below
  final BorderSide _defaultBorderSide;

  double get spacingTiny => _spacingUnit / 2;

  double get spacingSmall => _spacingUnit;

  double get spacingCustom => _spacingUnit * 1.5;

  double get spacingDefault => _spacingUnit * 2;

  double get spacingMedium => _spacingUnit * 3;

  double get spacingLarge => _spacingUnit * 4;

  double get spacingHuge => _spacingUnit * 8;

  double get cornerRadiusSmall => _cornerRadiusDefault * 4 / 6;
  double get cornerRadiusDefault => _cornerRadiusDefault;
  double get cornerRadiusMedium => _cornerRadiusDefault * 2;
  double get cornerRadiusLarge => _cornerRadiusDefault * 4;
  double get cornerRadiusXLarge => _cornerRadiusDefault * 6;

  double get hairlineWidth => 1 / _devicePixelRatio;

  BorderSide get defaultBorderSide => _defaultBorderSide;

  Widget get defaultKeyboardDown => Padding(
    padding: EdgeInsets.only(right: spacingDefault),
    child: const Icon(Icons.keyboard_hide),
  );

  Border get defaultBorder => Border.all(
    width: _defaultBorderSide.width,
    color: _defaultBorderSide.color,
  );

  BoxShadow get defaultBoxShadow => BoxShadow(
    color: Colors.black.withOpacity(0.05),
    blurRadius: 15.0,
    offset: const Offset(0, 10.0),
  );

  BoxShadow get defaultBoxShadowCircle => BoxShadow(
    color: Colors.black.withOpacity(0.12),
    blurRadius: 10.0,
    spreadRadius: 1.0,
    offset: const Offset(0.0, 4.0),
  );

  BoxShadow get smallBoxShadowCircle => BoxShadow(
    color: Colors.black.withOpacity(0.12),
    blurRadius: 12.0,
    spreadRadius: 2.0,
    offset: const Offset(2.0, 1.0),
  );

  Shadow get defaultTextShadow => Shadow(
    offset: const Offset(1.0, 1.0),
    blurRadius: 3.0,
    color: Colors.black.withOpacity(0.5),
  );

  final kDefaultCardShadow = BoxShadow(
    offset: Offset(0, 20),
    blurRadius: 50,
    color: Colors.black.withOpacity(0.1),
  );

  BorderRadius get borderRadiusSmall => BorderRadius.all(Radius.circular(cornerRadiusSmall));
  BorderRadius get borderRadiusDefault=> BorderRadius.all(Radius.circular(cornerRadiusDefault));
  BorderRadius get borderRadiusMedium => BorderRadius.all(Radius.circular(cornerRadiusMedium));
  BorderRadius get borderRadiusLarge => BorderRadius.all(Radius.circular(cornerRadiusLarge));
  BorderRadius get borderRadiusXLarge => BorderRadius.all(Radius.circular(cornerRadiusXLarge));


  ThemeState({
    @required ThemeData theme,
    devicePixelRatio: 1,
    spacingUnit = 12.0,
    cornerRadiusDefault = 6.0,
  })  : assert(theme != null),
        this.theme = theme,
        _cornerRadiusDefault = cornerRadiusDefault,
        _spacingUnit = spacingUnit,
        _devicePixelRatio = devicePixelRatio,
        _defaultBorderSide =
        BorderSide(color: AppColors.border, width: 1.0 / devicePixelRatio),
        super();

  @override
  List<Object> get props => [theme];
}

ThemeState get lightTheme => ThemeState(
  theme: new ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      elevation: 0.5,
      color: Colors.white,
      textTheme: TextTheme(
        title: TextStyleOption.textBusinessTitle(),
      ),
    ),
    bottomAppBarColor: Colors.white,
    backgroundColor: AppColors.offWhite,
    dividerTheme: DividerThemeData(
        space: 1.0, thickness: 1.0, color: AppColors.divider),
    fontFamily: 'Roboto',
    primaryColor: AppColors.primaryColor,
    accentColor: AppColors.greyBlue,
    tabBarTheme: TabBarTheme(
        labelStyle: TextStyleOption.textBusinessMedium2(),
        unselectedLabelStyle: TextStyleOption.textBusinessMedium1(),
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              color: AppColors.primaryColor,
              width: 4.0,
            ))),
    cardTheme: CardTheme(
      elevation: 0.5,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: AppColors.border, width: 0.5),
        borderRadius: new BorderRadius.circular(6.0),
      ),
    ),
    primaryTextTheme: TextTheme(
      caption: TextStyle(
          color: AppColors.greyBlue, fontSize: FontSize.smallSize),
      title: TextStyleOption.textBusinessTitle(),
      body1: TextStyleOption.textPrimaryMedium1(),
      body2: TextStyleOption.textPrimaryMedium2(),
      button: TextStyleOption.textWhiteMedium2(),
    ),
    primaryIconTheme: const IconThemeData(
      color: AppColors.businessBlack,
    ),
    buttonTheme: ButtonThemeData(
      height: 50,
      textTheme: ButtonTextTheme.primary,
      highlightColor: AppColors.primaryColor,
      buttonColor: AppColors.primaryColor,
      disabledColor: AppColors.primaryDisabled,
    ),
    textTheme: TextTheme(
      caption: const TextStyle(color: AppColors.greyBlue),
      body1: const TextStyle(color: AppColors.greyBlue),
      button: TextStyleOption.textWhiteMedium2(),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyleOption.textSecondaryLabelMedium1()
          .copyWith(fontSize: FontSize.mediumSize),
    ),
  ),
  devicePixelRatio: window.devicePixelRatio,
);

ThemeState get darkTheme => ThemeState(
  theme: new ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      elevation: 0.5,
      color: Colors.white,
      textTheme: TextTheme(
        title: TextStyle(
            color: AppColors.greyBlue,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.normal,
            fontSize: 18),
      ),
    ),
    dividerColor: AppColors.border,
    fontFamily: 'Roboto',
    primaryColor: AppColors.primaryColor,
    accentColor: AppColors.greyBlue,
    cardTheme: CardTheme(
      elevation: 0.5,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: AppColors.border, width: 0.5),
        borderRadius: new BorderRadius.circular(6.0),
      ),
    ),
    primaryTextTheme: const TextTheme(
      caption: TextStyle(color: AppColors.greyBlue, fontSize: 15),
      title: TextStyle(
        color: AppColors.greyBlue,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      body1: TextStyle(color: AppColors.grayFive, fontSize: 15),
      body2: TextStyle(
        color: AppColors.greyBlue,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      button: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
    primaryIconTheme: const IconThemeData(
      color: AppColors.greyBlue,
    ),
    buttonTheme: ButtonThemeData(
      height: 50,
      textTheme: ButtonTextTheme.primary,
      highlightColor: AppColors.primaryColor,
      buttonColor: AppColors.primaryColor,
      disabledColor: AppColors.primaryColor.withOpacity(0.5),
    ),
    textTheme: const TextTheme(
      caption: TextStyle(color: AppColors.greyBlue),
      body1: TextStyle(color: AppColors.greyBlue),
      button: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  devicePixelRatio: window.devicePixelRatio,
);
