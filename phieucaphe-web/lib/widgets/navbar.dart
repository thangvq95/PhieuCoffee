import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:phieucaphe/ui/component/button.dart';
import 'package:phieucaphe/ui/theme/app_decorator.dart';
import 'package:phieucaphe/ui/theme/colors.dart';
import 'package:phieucaphe/ui/theme/theme_bloc.dart';
import 'package:phieucaphe/utils/handle_cursor.dart';
import 'package:phieucaphe/widgets/constant.dart';
import 'package:provider/provider.dart';
import '../utils/responsiveLayout.dart';

class NavBar extends StatefulWidget {

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with AutomaticKeepAliveClientMixin<NavBar>{
  List<IntroInfo> _list = [];
  int _current = 0;

  Widget navItem({String text, VoidCallback onPressed, bool active = false})  {
    return TextContainer(
      onPressed: onPressed,
      active: active,
      text: text,
      padding: EdgeInsets.symmetric(horizontal: 16),
      style: TextStyleOption.textCharcoalBody2(),
      styleHover: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.white, ),
    );
  }

  @override
  void initState() {
    super.initState();
    _list.addAll(
       [
         IntroInfo('https://barista.qodeinteractive.com/wp-content/uploads/2017/01/home-1-slider.jpg', 'Important of coffee', Constant.LOREM_DESC),
         IntroInfo('https://barista.qodeinteractive.com/wp-content/uploads/2017/01/home1-parallax-1.jpg', 'Special coffee bean', Constant.LOREM_DESC),
         IntroInfo('https://barista.qodeinteractive.com/wp-content/uploads/2017/01/home-1-slider-img-2.jpg', 'The home at coffee', Constant.LOREM_DESC),
         IntroInfo('https://barista.qodeinteractive.com/wp-content/uploads/2017/01/home-1-slider-4.jpg', 'Brewed to per', Constant.LOREM_DESC)
       ]
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    ThemeState themeState = Provider.of<ThemeState>(context);
    return Material(
        color: Colors.transparent,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            CarouselSlider(
              items: _list.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        child: Stack(
                          children: <Widget>[
                            Image.network(i.image,fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height,
                              width: double.infinity,),
                            Positioned.fill(child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: themeState.spacingHuge),
                                  child: Text(i.title, style: TextStyleOption.textWhiteWithSize(fontSize: 60, fontWeight: FontWeight.w800),textAlign: TextAlign.center),
                                ),
                                SizedBox(
                                  height: themeState.spacingDefault,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: themeState.spacingHuge),
                                  child: Text(i.desc, style: TextStyleOption.textWhiteWithSize(fontSize: 30, fontWeight: FontWeight.w500,), textAlign: TextAlign.center,),
                                )
                              ],
                            ))
                          ],
                        )
                    );
                  },
                );
              }).toList(),
              height: MediaQuery.of(context).size.height,
              viewportFraction: 1.0,
              initialPage: _current,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: Duration(seconds: 5),
              enlargeCenterPage: false,
              onPageChanged: (int value){
                setState(() {
                  _current = value;
                });
              },
              scrollDirection: Axis.horizontal,
            ),
            Positioned(
                left: 0.0,
                right: 0.0,
                bottom: themeState.spacingLarge,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    for(var i=0; i < _list.length; i++)
                      Container(
                        width: 8.0,
                        height: 8.0,
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.symmetric(horizontal: themeState.spacingSmall),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == i ? Color.fromRGBO(255, 255, 255, 0.9) : Color.fromRGBO(0, 0, 0, 0.4)
                        ),
                      )
                  ],
                )
            ),
//            Positioned(
//              left: themeState.spacingMedium,
//              top: MediaQuery.of(context).size.height / 2,
//              child: InkWell(
//                  onTap: (){
//                    setState(() {
//                      if(_current > 0) {
//                        _current -= _current;
//                      }else{
//                        _current = _list.length - 1;
//                      }
//                    });
//                  },
//                  child: Icon(Icons.keyboard_backspace, size: 40, color: AppColors.white,)),
//            ),
//            Positioned(
//              right: themeState.spacingMedium,
//              top: MediaQuery.of(context).size.height / 2,
//              child: InkWell(
//                  onTap: (){
//                    setState(() {
//                      if(_current + 1 < _list.length) {
//                        _current += _current;
//                      }else {
//                        _current = 0;
//                      }
//                    });
//                  },
//                  child: RotatedBox(
//                      quarterTurns: 2,
//                      child: Icon(Icons.keyboard_backspace, size: 40, color: AppColors.white))),
//            ),
            Container(
              color: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: themeState.spacingMedium, vertical: themeState.spacingDefault),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Phiêu Cà Phê", style: TextStyleOption.textBlackBigSize()),
                  if (!ResponsiveLayout.isSmallScreen(context))
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        navItem(text: "HOME", active: true, onPressed: (){

                        }),
                        navItem(text: "SHOP", onPressed: (){

                        }),
                        navItem(text: "BLOG", onPressed: (){

                        }),
                        navItem(text: "ABOUT US", onPressed: (){

                        }),
                   ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconSocial(){
    return Container(
      child: HandleCursor(
        onHover: (){},
        onExit: (){},
        child: Html(
          data: "<img src=\"https://img.icons8.com/cute-clipart/48/000000/instagram-new.png\">",
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}


class IntroInfo{
  final String image;
  final String title;
  final String desc;
  IntroInfo(this.image, this.title, this.desc, );
}


//          Container(
//            color: Colors.black87,
//            padding: EdgeInsets.symmetric(vertical: themeState.spacingSmall, horizontal: themeState.spacingDefault),
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.center,
//              children: <Widget>[
//                Text("Call us +84 932 659 300  |  phieucaphe@gmail.com  |  ", style: TextStyleOption.textWhiteWithSize(fontSize: 12, fontWeight: FontWeight.w300,),),
//                Container(
//                  padding: EdgeInsets.symmetric(horizontal: themeState.spacingTiny),
//                  child:  Image.asset("assets/images/ic_facebook.png", width: 26, height: 26,),
//                ),
//                Container(
//                  padding: EdgeInsets.symmetric(horizontal: themeState.spacingTiny),
//                  child:  Image.asset("assets/images/ic_messenger.png", width: 26, height: 26,),
//                ),
//                Expanded(child: SizedBox(),),
//                Text("Login", style: TextStyleOption.textWhiteWithSize(fontSize: 13, fontWeight: FontWeight.w300,),)
//              ],
//            ),
//          ),