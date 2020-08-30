import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import 'home_screen.dart' ;
import 'theme/theme.dart';

/// Task:
/// 1. Footer (5/9)
/// 2. Handle Vi En options (5/9)
/// 3. Content and images (6/9)
/// 4. deploy firebase (save images in firebase storage) (13-14/9)
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> AppProvider(),
      child:  Consumer<AppProvider>(
      builder: (context, appProvider, child){
        return MultiProvider(
          providers: [
            Provider<ThemeState>.value(value: appProvider.themeState),
          ],
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              home: HomeScreen()
          ),
        );
      },
      ),
    );
  }
}

class AppProvider extends ChangeNotifier{
  ThemeState themeState;
  VideoPlayerController controller;

  static bool isLightTheme = true;

  AppProvider(){
    this.themeState = lightTheme;
    controller = VideoPlayerController.network('https://res.cloudinary.com/dged6vxpd/video/upload/v1585409096/video/intro-phieucf_o4s8op.mp4')
      ..initialize().then((_) {
        notifyListeners();
      });
  }

  setThemeState(){
    AppProvider.isLightTheme = !AppProvider.isLightTheme;
    this.themeState = AppProvider.isLightTheme ? lightTheme : darkTheme;
    notifyListeners();
  }
}
