import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:path_drawing/path_drawing.dart';
import 'package:phieucaphe/ui/theme/colors.dart';
import 'package:phieucaphe/ui/theme/theme.dart';

class ThemeState extends Equatable {
  final ThemeData theme;
  final double _devicePixelRatio;
  final double _spacingUnit; // Use getters below
  final double _cornerRadiusDefault; // Use getters below
  final BorderSide _defaultBorderSide;

  double get spacingTiny => _spacingUnit / 2;

  double get spacingSmall => _spacingUnit;

  double get spacingDefault => _spacingUnit * 2;

  double get spacingMedium => _spacingUnit * 3;

  double get spacingLarge => _spacingUnit * 4;

  double get spacingHuge => _spacingUnit * 8;

  double get cornerRadiusDefault => _cornerRadiusDefault;
  double get cornerRadiusMedium => _cornerRadiusDefault * 2 ;

  double get hairlineWidth => 1 / _devicePixelRatio;

  CircularIntervalList<double> get dashInterval =>
      CircularIntervalList([4.0, 4.0]);

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

  Shadow get defaultTextShadow => Shadow(
    offset: const Offset(1.0, 1.0),
    blurRadius: 3.0,
    color: Colors.black.withOpacity(0.5),
  );

  ThemeState({
    @required this.theme,
    devicePixelRatio = 1,
    spacingUnit = 8.0,
    cornerRadiusDefault = 6.0,
  })  : assert(theme != null),
        _cornerRadiusDefault = cornerRadiusDefault,
        _spacingUnit = spacingUnit,
        _devicePixelRatio = devicePixelRatio,
        _defaultBorderSide =
        BorderSide(color: AppColors.silver, width: 1.0 / devicePixelRatio);

  @override
  // TODO: implement props
  List<Object> get props => null;
}
