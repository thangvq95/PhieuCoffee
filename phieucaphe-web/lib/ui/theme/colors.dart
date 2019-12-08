import 'package:flutter/material.dart';

class AppColors {
  static const turquoise = Color(0xFF06BEBD);
  static const disabledTurquoise = Color(0x6606BEBD);
  static const dark = Color(0xFF212F3D);
  static const charcoal = Color(0xFF454851);
  static const greyBlue = Color(0xFF667190);
  static const blueGrey = Color(0xFFADBBC4);
  static const silver = Color(0xFFD4DADE);
  static const paleGrey = Color(0xFFE9EEF1);
  static const offWhite = Color(0xFFFAFAFA);
  static const paleOlive = Color(0xFFB7CE63);
  static const blush = Color(0xFFEE9872);
  static const redPink = Color(0xFFEE4054);
  static const twilight = Color(0xFF685BA0);
  static const peachOrange = Color(0xFFFFCE99);
  static const bitterSweet = Color(0xFFFA8161);
  static const corvette = Color(0xFFFCC79E);
  static const wisteria = Color(0xFF9A6CB0);
  static const amaranth = Color(0xFFEE4054);
  static const black = Colors.black87;
  static const lightMustard = Color(0xFFFAD961);
  static const facebookBlue = Color(0xFF3B5998);

  static const grayZero = Color(0xFF222222);
  static const grayTwo = Color(0xFF666666);
  static const grayThree = Color(0xFF999999);
  static const grayFour = Color(0xFFBBBBBB);
  static const grayFive = Color(0xFFCCCCCC);
  static const graySix = Color(0xFFDDDDDD);
  static const graySeven = Color(0xFFEEEEEE);
  static const grayEight = Color(0xFFF7F7F7);
  static const grayNine = Color(0xFFFAFAFA);

  static const businessGreen = Color(0xFF476920);
  static const white = Color(0xFFFFFFFF);

  static const background = white;
  static const card = white;

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
}
