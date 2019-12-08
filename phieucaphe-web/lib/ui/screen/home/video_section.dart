import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phieucaphe/ui/theme/colors.dart';
import 'package:phieucaphe/ui/theme/theme_bloc.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class VideoSection extends StatefulWidget {
  @override
  _VideoSectionState createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  VideoPlayerController _controller;
  ThemeState themeState;

  @override
  void didChangeDependencies() {
    themeState = Provider.of<ThemeState>(context);
    super.didChangeDependencies();
  }
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://barista.qodeinteractive.com/wp-content/uploads/2017/02/Sequence_01_1.webm')
      ..initialize().then((_) {
        setState(() {});
      });
    _controller.setLooping(true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: themeState.spacingMedium),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (_controller.value.initialized)
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(themeState.cornerRadiusDefault)),
                  child: Stack(
                    children: <Widget>[
                      Container(
                          height: 300,
                          width: _controller.value.aspectRatio * 300,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(themeState.cornerRadiusDefault)),
                            child: VideoPlayer(
                              _controller,
                            ),
                          )),
                      if (_controller.value.isPlaying == false)
                        Positioned.fill(
                          child: Container(
                            height: 300,
                            width: 380,
                            child: Center(
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _controller.play();
                                    });
                                  },
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 40,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
