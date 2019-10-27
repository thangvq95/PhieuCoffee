import 'package:flutter/material.dart';
import 'package:phieucaphe/ui/component/button.dart';
import 'package:phieucaphe/ui/theme/theme_bloc.dart';
import 'package:phieucaphe/utils/handle_cursor.dart';
import 'package:provider/provider.dart';
import '../utils/responsiveLayout.dart';

class NavBar extends StatelessWidget {
  final navLinks = ["Home", "Products", "Features", "Contact"];

  List<Widget> navItem(ThemeState themeState) {
    return navLinks.map((text) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: themeState.spacingSmall),
        child: AppContainer(
          child: Text(text, style: TextStyle()),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    ThemeState themeState = Provider.of<ThemeState>(context);
    return Material(
        color: Colors.transparent,
      child: Container(
        height: 200,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                 children: <Widget>[
                   Image.asset("assets/images/logo.jpg"),
                   Text("Phiêu Cà Phê", style: TextStyle(fontSize: 26)),
                 ],
              ),
              if (!ResponsiveLayout.isSmallScreen(context))
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ...navItem(themeState)]
                    ..add(Container(
                      margin: EdgeInsets.symmetric(horizontal: themeState.spacingSmall),
                      child: AppContainer(
                        child: Text("Login",),
                      ),
                    )),
                )

            ],
          ),
        ),
      ),
    );
  }
}
