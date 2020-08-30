import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:web/main.dart';
import 'package:web/theme/app_decorator.dart';
import 'package:web/theme/colors.dart';
import 'package:web/theme/theme.dart';

class VideoSection extends StatefulWidget {
  @override
  _VideoSectionState createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  AppProvider appProvider;
  ThemeState themeState;
  @override
  void didChangeDependencies() {
    appProvider = Provider.of<AppProvider>(context);
    themeState = Provider.of<ThemeState>(context);
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 500,
        margin: EdgeInsets.symmetric(horizontal: themeState.spacingDefault),
        child: Stack(
          children: [
           if(appProvider.controller.value.initialized)
              Center(
                child: ClipRRect(
                  borderRadius: themeState.borderRadiusMedium,
                  child: Container(
                    height: 500,
                    width: appProvider.controller.value.aspectRatio * 500,
                    child: VideoPlayer(
                        appProvider.controller,
                    ),
                  ),
                ),
              ),
            Center(
              child: Container(
                child: FlatButton(
                    shape: const CircleBorder(),
                    onPressed: (){
                      setState(() {
                        appProvider.controller.value.isPlaying
                            ? appProvider.controller.pause()
                            : appProvider.controller.play();
                      });
                    },
                    child: IconStyleOption.iconAsset(appProvider.controller.value.isPlaying ? Icons.pause_circle_filled :Icons.play_circle_filled, size: 60, color: AppColors.white.withOpacity(0.5))),
              ),
            ),
          ],
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
    appProvider.controller.dispose();
  }
}
