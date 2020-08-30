import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme/theme.dart';
import 'ui/blog_section/blog_section.dart';
import 'ui/footer_section/footer_section.dart';
import 'ui/service_section/service_section.dart';
import 'ui/signature_section/signature_section.dart';
import 'ui/branch_section/branch_section.dart';
import 'ui/top_section/top_section.dart';
import 'dart:js' as js;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  ThemeState themeState;
  double currentScrollPosition = 0.0;
  AnimationController controller;
  Animation<Offset> offset;
  ValueNotifier<Animation<Offset>> offsetNotifier =
  ValueNotifier<Animation<Offset>>(null);

  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    controller.addStatusListener((status) {
      offsetNotifier.value = offset;
    });
    offset = Tween<Offset>(begin: Offset.zero, end: const Offset(0.0, -1.0))
        .animate(controller);
    offsetNotifier.value = offset;
    super.initState();
  }
  @override
  void didChangeDependencies() {
    themeState = Provider.of<ThemeState>(context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification){
                if (scrollNotification?.depth == 0) {
                  final maxScroll = scrollNotification?.metrics?.maxScrollExtent ?? 0;
                  final currentScroll = scrollNotification?.metrics?.pixels ?? 0;
                  if (!controller.isAnimating && currentScroll > 0) {
                    if (currentScroll > currentScrollPosition && controller.value == 0) {
                      controller.forward();
                    } else if (currentScroll + 10 < currentScrollPosition && controller.value == 1) {
                      controller.reverse();
                    }
                  }
                  currentScrollPosition = currentScroll;
                  return currentScroll > 0;
                }

                return false;
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TopSection(),
                    ServiceSection(),
                    BranchSection(),
                    SignatureSection(),
                    BlogSection(),
                    FooterSection(),
                  ],
                ),
              ),
            ),
          ),
          ValueListenableBuilder<Animation<Offset>>(
            valueListenable: offsetNotifier,
            builder: (context, value, _) {
              return Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: SlideTransition(
                  position: value,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        // Where the linear gradient begins and ends
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        // Add one stop for each color. Stops should increase from 0 to 1
                        stops: [0.1, 0.9],
                        colors: [
                          Colors.black38,
                          Colors.transparent
                        ],
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 200,
                          height: 100,
                          margin: EdgeInsets.only(top: 16),
                          alignment: Alignment.center,
                          child: IconStyleOption.imageAsset('assets/images/logo.png', height: 100, fit: BoxFit.fitHeight),
                        ),
                        Expanded(
                          child: _buildSectionBar(),
                        ),
                        SizedBox(width: themeState.spacingSmall,),
                        _buildSocialBar(),
                        SizedBox(width: themeState.spacingMedium,),
                      ],
                    ),
                  )
                ),
              );
            },
          ),

        ],
      ),
    );
  }

  _buildSectionBar(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildTitleBar('Home', "take a coffee"),
          _buildTitleBar('About', "who we are"),
          _buildTitleBar('Contact', "write us"),
        ],
      ),
    );
  }

  _buildTitleBar(String title, String sub){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: themeState.spacingSmall),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyleOption.textWhiteBody2(fontFamily: FontFamily.Amita),),
          SizedBox(height: themeState.spacingSmall,),
          Text(sub, style: TextStyleOption.textWhiteSmallBody1(offWhite: true).copyWith(color: Colors.white.withAlpha(160)),)
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
        ),
          SizedBox(width: themeState.spacingTiny,),
        SocialButton(
          onTap: () async{
            js.context.callMethod("open", ["https:///www.instagram.com/phieucaphe"]);
          },
          image: 'assets/images/icon_instagram.png'
        ),

      ],
    );
  }
}

class SocialButton extends StatefulWidget {
  final VoidCallback onTap;
  final String image;
  const SocialButton({Key key, this.onTap, this.image}) : super(key: key);

  @override
  _SocialButtonState createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
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
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: themeState.borderRadiusDefault,
          boxShadow: [if (isHover) themeState.kDefaultCardShadow],
        ),
        padding: EdgeInsets.all(12),
        child: Container(
            child: IconStyleOption.imageAsset(widget.image, width: 20, height: 20)),
      ),
    );
  }
}

