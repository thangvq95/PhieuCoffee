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
      'https://uc7aa3f9f390b1b0d4314a03730e.dl.dropboxusercontent.com/cd/0/get/AuEM7PaLqB4OYkj21pFlU3YSQk7GmNLRIbIPIqX29tgaaOxrXlbUnNes0AORj4-GBQzYv-QQW70atPO9pXWTMxFOZjCMJBl_f72xFs6gfqzVYznWPoZmJSKRyqzn91CID8w/file?_download_id=7968403052415093546771884996300482842770457904278441288875316864&_notify_domain=www.dropbox.com&dl=1')
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
