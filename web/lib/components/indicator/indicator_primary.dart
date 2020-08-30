import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:web/theme/theme.dart';

class IndicatorPrimary extends StatelessWidget {
  final int length;
  final int currentIndex;
  const IndicatorPrimary({Key key, this.length, this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(length == null || length <= 1)
      return Container();
    return Row(
      mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          for(var i = 0; i < length; i++)
            Container(
              width: 8.0,
              height: 8.0,
              margin: const EdgeInsets.symmetric(
                horizontal: 3.0,
              ),
              decoration: currentIndex == i ? BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.blush)
              : BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                border: Border.all(color: AppColors.border, width: 1.0)
              ),
            )
        ]);
  }
}
