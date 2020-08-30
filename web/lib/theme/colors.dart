import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xFF0AC2CC);

  /// Cyan 600
  static const businessBlack = Color(0xFF222F3C);

  /// Gray 900
  static const greyBlue = Color(0xFF3E4C59);

  /// Gray 800
  static const blueGrey = Color(0xFF697B8C);

  /// Gray 700
  static const grey600 = Color(0xFF99ACBF);

  /// Gray 600

  static const greenGlobal = Color(0xFF9DD911);

  /// Green 600
  static const redPassionate = Color(0xFFE5402E);

  /// Red 600
  static const orangeInnovative = Color(0xFFF58F1B);

  /// Orange 600
  static const yellowTeam = Color(0xFFFFC043);

  /// Yellow 600
  static const bluePersevering = Color(0xFF4280F4);

  /// Blue 600
  static const purplePlayful = Color(0xFF7151C9);

  /// Purple 600
  static const graySport = Color(0xFF556268);

  /// Gray 600

  static const primaryHover = Color(0xFF3BD7D6);
  static const primaryActive = Color(0xFF09B3B3);
  static const primaryDisabled = Color(0xFFA6EEF1);
  static const primaryBackgroundHover = Color(0xFFCEF9F9);
  static const primaryBorder = primaryColor;

  static const backgroundPrimary = white;
  static const cardPrimary = white;

  /// for card background
  static const white = Color(0xFFFFFFFF);
  static const offWhite = Color(0xFFFAFAFA);

  static const title = businessBlack;
  static const primaryText = greyBlue;
  static const secondaryText = blueGrey;

  static const iconColor = graySport;
  static const hintText = grey600;
  static const border = Color(0xFFC3D1DE);

  /// Gray 500
  static const divider = Color(0xFFE9EFF5);

  /// Gray 300
  static const backgrounds = offWhite;

  /// Gray 100
  static const tableHeader = Color(0xFFF5F8FA);

  /// Gray 200
  static const paleGrey = Color(0xFFC3D1DE);

  /// Gray 500

  static const facebookBlue = Color(0xFF3B5998);
  static const disabledPrimaryColor = Color(0x660B6268);

  /// Cyan 900
  static const blush = Color(0xFFEE9872);

  /// TODO: check

  /// 4 colors for profile pulse
  static const bitterSweet = Color(0xFFFA8161);
  static const corvette = Color(0xFFFCC79E);
  static const wisteria = Color(0xFF9A6CB0);
  static const amaranth = Color(0xFFEE4054);

  /// TODO: check
  static const grayTwo = Color(0xFF666666);
  static const grayThree = Color(0xFF999999);
  static const grayFour = Color(0xFFBBBBBB);
  static const grayFive = Color(0xFFCCCCCC);
  static const graySix = Color(0xFFDDDDDD);
  static const graySeven = Color(0xFFEEEEEE);

  /// TODO: change to green global or primary color
  static const defaultGradient = LinearGradient(
    // Where the linear gradient begins and ends
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    // Add one stop for each color. Stops should increase from 0 to 1
    stops: [0.3, 0.9],
    colors: [
      // Colors are easy thanks to Flutter's Colors class.
      Color.fromRGBO(6, 190, 189, 1),
      Color.fromRGBO(183, 206, 99, 1)
    ],
  );

  static pulseGradient({alpha = 1.0}) => LinearGradient(
    // Where the linear gradient begins and ends
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    // Add one stop for each color. Stops should increase from 0 to 1
    stops: [0.1, 0.9],
    colors: [
      // Colors are easy thanks to Flutter's Colors class.
      Color.fromRGBO(104, 90, 160, alpha),
      Color.fromRGBO(6, 190, 189, alpha),
    ],
  );

  /// TODO: change to green global or primary color
  static turquoiseGradient({alpha = 1.0}) => LinearGradient(
    // Where the linear gradient begins and ends
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    // Add one stop for each color. Stops should increase from 0 to 1
    stops: [-0.3, 0.95],
    colors: [
      // Colors are easy thanks to Flutter's Colors class.
      Color.fromRGBO(6, 190, 189, alpha),
      Color.fromRGBO(183, 206, 99, alpha),
    ],
  );

//  static const cardGradient = LinearGradient(
//    begin: Alignment.topLeft,
//    end: Alignment.bottomRight,
//    colors: [
//      const Color.fromRGBO(104, 90, 160, 1.0),
//      const Color.fromRGBO(6, 190, 189, 1.0),
//    ],
//  );
}

class CyanColor {
  static final Color primaryColor = AppColors.primaryColor;
  static final Color primaryTagPrimary = color[600];
  static final Color primaryTag = GrayColor.color[900];
  static final Color background = AppColors.white;
  static final Color backgroundTransparent = Colors.transparent;
  static final Color border = color[500];
  static final Color hover = color[100];

  static const int _primaryValue = 0xFF0AC2CC;

  static const color = MaterialColor(
    _primaryValue,
    <int, Color>{
      100: Color(0xFFCDF6F9),
      200: Color(0xFFA6EEF1),
      300: Color(0xFF7FE5EA),
      400: Color(0xFF5ADAE1),
      500: Color(0xFF3BCFD6),
      600: Color(_primaryValue),
      700: Color(0xFF1BA4AB),
      800: Color(0xFF12848A),
      900: Color(0xFF0B6268),
      1000: Color(0xFF043F43),
    },
  );
}

class GreenColor {
  static final Color primaryColor = const Color(_primaryValue);
  static final Color primaryTagPrimary = color[600];
  static final Color primaryTag = GrayColor.color[900];
  static final Color background = AppColors.white;
  static final Color backgroundTransparent = Colors.transparent;
  static final Color border = color[500];
  static final Color hover = color[100];

  static const int _primaryValue = 0xFF9DD911;

  static const color = MaterialColor(
    _primaryValue,
    <int, Color>{
      100: Color(0xFFEDFBCC),
      200: Color(0xFFDEF7A4),
      300: Color(0xFFCFF27D),
      400: Color(0xFFBFEB58),
      500: Color(0xFFAEE234),
      600: Color(_primaryValue),
      700: Color(0xFF83B70A),
      800: Color(0xFF699405),
      900: Color(0xFF4D6E01),
      1000: Color(0xFF324700),
    },
  );
}

class GrayColor {
  static final Color primaryColor = const Color(_primaryValue);
  static final Color primaryTagPrimary = color[600];
  static final Color primaryTag = GrayColor.color[900];
  static final Color background = AppColors.white;
  static final Color backgroundTransparent = Colors.transparent;
  static final Color border = color[500];
  static final Color hover = color[100];

  static const int _primaryValue = 0xFFE9EFF5;

  static const color = MaterialColor(
    _primaryValue,
    <int, Color>{
      100: Color(0xFFFAFAFA),
      200: Color(0xFFF5F8FA),
      300: Color(_primaryValue),
      400: Color(0xFFD1DCE8),
      500: Color(0xFFC3D1DE),
      600: Color(0xFF99ACBF),
      700: Color(0xFF697B8C),
      800: Color(0xFF3E4C59),
      900: Color(0xFF222F3C),
      1000: Color(0xFF000000),
    },
  );
}

class RedColor {
  static final Color primaryColor = const Color(_primaryValue);
  static final Color primaryTagPrimary = color[600];
  static final Color primaryTag = GrayColor.color[900];
  static final Color background = AppColors.white;
  static final Color backgroundTransparent = Colors.transparent;
  static final Color border = color[500];
  static final Color hover = color[100];

  static const int _primaryValue = 0xFFFE223C;

  static const color = MaterialColor(
    _primaryValue,
    <int, Color>{
      100: Color(0xFFFECFD6),
      200: Color(0xFFFEAAB5),
      300: Color(0xFFFD8696),
      400: Color(0xFFFD6579),
      500: Color(0xFFFD455C),
      600: Color(_primaryValue),
      700: Color(0xFFCB243A),
      800: Color(0xFF9C1F30),
      900: Color(0xFF701925),
      1000: Color(0xFF451118),
    },
  );
}

class YellowColor {
  static final Color primaryColor = const Color(_primaryValue);
  static final Color primaryTagPrimary = color[600];
  static final Color primaryTag = GrayColor.color[900];
  static final Color background = AppColors.white;
  static final Color backgroundTransparent = Colors.transparent;
  static final Color border = color[500];
  static final Color hover = color[100];

  static const int _primaryValue = 0xFFFDC83D;

  static const color = MaterialColor(
    _primaryValue,
    <int, Color>{
      100: Color(0xFFFFF6D1),
      200: Color(0xFFFFEEAF),
      300: Color(0xFFFEE58D),
      400: Color(0xFFFEDC6F),
      500: Color(0xFFFED353),
      600: Color(_primaryValue),
      700: Color(0xFFCCA334),
      800: Color(0xFF9D7E2B),
      900: Color(0xFF715C20),
      1000: Color(0xFF463915),
    },
  );
}

class OrangeColor {
  static final Color primaryColor = const Color(_primaryValue);
  static final Color primaryTagPrimary = color[600];
  static final Color primaryTag = GrayColor.color[900];
  static final Color background = AppColors.white;
  static final Color backgroundTransparent = Colors.transparent;
  static final Color border = color[500];
  static final Color hover = color[100];

  static const int _primaryValue = 0xFFFD9426;

  static const color = MaterialColor(
    _primaryValue,
    <int, Color>{
      100: Color(0xFFFFE9CD),
      200: Color(0xFFFFD7A7),
      300: Color(0xFFFFC582),
      400: Color(0xFFFEB35E),
      500: Color(0xFFFAA13C),
      600: Color(_primaryValue),
      700: Color(0xFFCF7612),
      800: Color(0xFFA65D0B),
      900: Color(0xFF794405),
      1000: Color(0xFF4D2B02),
    },
  );
}

class BlueColor {
  static final Color primaryColor = const Color(_primaryValue);
  static final Color primaryTagPrimary = color[600];
  static final Color primaryTag = GrayColor.color[900];
  static final Color background = AppColors.white;
  static final Color backgroundTransparent = Colors.transparent;
  static final Color border = color[500];
  static final Color hover = color[100];

  static const int _primaryValue = 0xFF4280F4;

  static const color = MaterialColor(
    _primaryValue,
    <int, Color>{
      100: Color(0xFFD6E5FF),
      200: Color(0xFFB6D0FF),
      300: Color(0xFF97BBFF),
      400: Color(0xFF7AA7FC),
      500: Color(0xFF5D93F9),
      600: Color(_primaryValue),
      700: Color(0xFF3369CD),
      800: Color(0xFF2551A4),
      900: Color(0xFF193B79),
      1000: Color(0xFF0F254D),
    },
  );
}

class PurpleColor {
  static final Color primaryColor = const Color(_primaryValue);
  static final Color primaryTagPrimary = color[600];
  static final Color primaryTag = GrayColor.color[900];
  static final Color background = AppColors.white;
  static final Color backgroundTransparent = Colors.transparent;
  static final Color border = color[500];
  static final Color hover = color[100];

  static const int _primaryValue = 0xFF7151C9;

  static const color = MaterialColor(
    _primaryValue,
    <int, Color>{
      100: Color(0xFFE2DAF7),
      200: Color(0xFFCABDEF),
      300: Color(0xFFB3A1E7),
      400: Color(0xFF9D85DE),
      500: Color(0xFF876BD4),
      600: Color(_primaryValue),
      700: Color(0xFF5C40A8),
      800: Color(0xFF483187),
      900: Color(0xFF342264),
      1000: Color(0xFF201540),
    },
  );
}

class MagentaColor {
  static final Color primaryColor = const Color(_primaryValue);
  static final Color primaryTagPrimary = color[600];
  static final Color primaryTag = GrayColor.color[900];
  static final Color background = AppColors.white;
  static final Color backgroundTransparent = Colors.transparent;
  static final Color border = color[500];
  static final Color hover = color[100];

  static const int _primaryValue = 0xFFE02D8F;

  static const color = const MaterialColor(
    _primaryValue,
    <int, Color>{
      100: Color(0xFFFCD1E9),
      200: Color(0xFFF9AED7),
      300: Color(0xFFF58CC5),
      400: Color(0xFFEF6BB3),
      500: Color(0xFFE84CA1),
      600: Color(_primaryValue),
      700: Color(0xFFBD2176),
      800: Color(0xFF97175E),
      900: Color(0xFF710F45),
      1000: Color(0xFF49082B),
    },
  );
}
