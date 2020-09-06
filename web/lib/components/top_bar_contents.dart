import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web/theme/theme.dart';
import 'dart:js' as js;

class TopBarContents extends StatefulWidget {
  final double opacity;
  final VoidCallback contactCallback;
  final VoidCallback aboutCallback;
  final VoidCallback homeCallback;

  TopBarContents(this.opacity,{this.contactCallback, this.aboutCallback, this.homeCallback,});

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  ThemeState themeState;

  @override
  void didChangeDependencies() {
    themeState = Provider.of<ThemeState>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 48),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.businessBlack.withOpacity(widget.opacity < 0 ? 0.0 :widget.opacity),
//          gradient: LinearGradient(
//            // Where the linear gradient begins and ends
//            begin: Alignment.topCenter,
//            end: Alignment.bottomCenter,
//            stops: [0.1, 0.9],
//            colors: [
//              Colors.black.withOpacity(widget.opacity < 0 ? 0.0 : widget.opacity > 0.9 ? 0.9 : widget.opacity),
//              Colors.transparent
//            ],
//          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: _buildSectionBar(),
            ),
            SizedBox(width: themeState.spacingSmall,),
            _buildSocialBar(),
            SizedBox(width: themeState.spacingMedium,),
          ],
        ),
      ),
    );
  }

  _buildTitleBar(String title, VoidCallback onTap){
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: themeState.spacingSmall),
        child: Text(title, style: TextStyleOption.textWhiteBody2(fontFamily: FontFamily.Amita),),
      ),
    );
  }

  _buildSectionBar(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildTitleBar('Home', widget.homeCallback),
          _buildTitleBar('About', widget.aboutCallback),
          _buildTitleBar('Contact', widget.contactCallback),
        ],
      ),
    );
  }

  _buildSocialBar(){
    return Row(
      children: [
        SocialButton(
          onTap: () async{
            js.context.callMethod("open", ["https://www.facebook.com/caphephieu"]);
          },
          image: 'assets/images/icon_facebook.png',
          opacity: widget.opacity,
        ),
        SizedBox(width: themeState.spacingTiny,),
        SocialButton(
            onTap: () async{
              js.context.callMethod("open", ["https:///www.instagram.com/phieucaphe"]);
            },
            image: 'assets/images/icon_instagram.png',
          opacity: widget.opacity,
        ),

      ],
    );
  }

}

class SocialButton extends StatefulWidget {
  final VoidCallback onTap;
  final double opacity;
  final String image;
  const SocialButton({Key key, this.onTap, this.image, this.opacity = 1.0}) : super(key: key);

  @override
  _SocialButtonState createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double opacityX = widget.opacity < 0.3 ? 0.12
        : widget.opacity < 0.5 ? 0.09
        : widget.opacity < 0.75 ? 0.06
        : 0.0;
    final themeState = Provider.of<ThemeState>(context);
    return InkWell(
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      onTap: widget.onTap,
      child: Container(
        width: 40,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(opacityX),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(themeState.cornerRadiusDefault),
            bottomRight: Radius.circular(themeState.cornerRadiusDefault),
          ),
          boxShadow: [if (isHover) themeState.kDefaultCardShadow],
        ),
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Container(
            child: IconStyleOption.imageAsset(widget.image, width: 20, height: 20)),
      ),
    );
  }
}

