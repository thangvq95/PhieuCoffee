import 'package:phieucaphe/ui/theme/colors.dart';
import 'package:phieucaphe/ui/theme/theme_bloc.dart';
import 'package:phieucaphe/utils/handle_cursor.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class AppContainer extends StatefulWidget {
  final String asset;
  final Widget child;
  AppContainer({this.asset, this.child});

  @override
  _AppContainerHover createState() => _AppContainerHover();
}

class _AppContainerHover extends State<AppContainer> {
  bool hover = false;
  ThemeState theme;
  @override
  void didChangeDependencies() {
    theme = Provider.of<ThemeState>(context);
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return HandleCursor(
      onHover: (){
        setState(() {
          hover = true;
        });
      },
      onExit: (){
       setState(() {
         hover = false;
       });
      },
      child: Container(
        padding: EdgeInsets.all(theme.spacingSmall),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(theme.cornerRadiusDefault)),
          color: hover ? AppColors.blueGrey : Colors.transparent,
          border: Border.all(color:  hover ?  Colors.transparent : AppColors.offWhite)
        ),
        child: widget.child,
      ),
    );
  }
}
