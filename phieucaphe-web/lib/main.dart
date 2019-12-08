import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:phieucaphe/small_child.dart';
import 'package:phieucaphe/ui/theme/colors.dart';
import 'package:phieucaphe/ui/theme/theme_bloc.dart';
import 'package:provider/provider.dart';
import 'env.dart';
import 'large_child.dart';
import 'utils/responsiveLayout.dart';
import 'widgets/navbar.dart';

void main() => Env();

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ThemeState>.value(value: theme),
      ],
      child: OKToast(
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ThemeState themeState;
  @override
  void didChangeDependencies() {
    themeState = Provider.of<ThemeState>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeState.theme,
      color: Colors.white,
      home: Scaffold(
          body: Body())
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          NavBar(),
          ResponsiveLayout(
            largeScreen: LargeChild(),
            smallScreen: SmallChild(),
          ),
        ],
      ),
    );
  }
}

ThemeState get theme => ThemeState(
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          elevation: 0.5,
          color: Colors.white,
          textTheme: TextTheme(
            title: TextStyle(
                color: AppColors.greyBlue,
                fontFamily: 'Lato',
                fontWeight: FontWeight.normal,
                fontSize: 18),
          ),
        ),
        dividerColor: AppColors.silver,
        fontFamily: 'Lato',
        primaryColor: AppColors.turquoise,
        accentColor: AppColors.greyBlue,
        cardTheme: CardTheme(
          elevation: 0.5,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: AppColors.silver, width: 0.5),
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
        primaryTextTheme: const TextTheme(
          caption: TextStyle(color: AppColors.greyBlue, fontSize: 15),
          title: TextStyle(
            color: AppColors.greyBlue,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          body1: TextStyle(color: AppColors.grayFive, fontSize: 15),
          body2: TextStyle(
            color: AppColors.greyBlue,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          button: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        primaryIconTheme: const IconThemeData(
          color: AppColors.greyBlue,
        ),
        buttonTheme: ButtonThemeData(
          height: 50,
          textTheme: ButtonTextTheme.primary,
          highlightColor: AppColors.turquoise,
          buttonColor: AppColors.turquoise,
          disabledColor: AppColors.turquoise.withOpacity(0.5),
        ),
        textTheme: const TextTheme(
          caption: TextStyle(color: AppColors.greyBlue),
          body1: TextStyle(color: AppColors.greyBlue),
          button: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      devicePixelRatio: window.devicePixelRatio,
    );
