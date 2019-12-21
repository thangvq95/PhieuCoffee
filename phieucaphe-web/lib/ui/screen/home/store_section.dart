
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phieucaphe/ui/theme/app_decorator.dart';
import 'package:phieucaphe/ui/theme/colors.dart';
import 'package:phieucaphe/ui/theme/theme_bloc.dart';
import 'package:provider/provider.dart';

class StoreSection extends StatefulWidget {
  @override
  _StoreSectionState createState() => _StoreSectionState();
}

class _StoreSectionState extends State<StoreSection> {
 ThemeState themeState;
 int _current = 3;
 List _list = ['https://barista.qodeinteractive.com/wp-content/uploads/2017/01/home-1-slider.jpg',
   'https://barista.qodeinteractive.com/wp-content/uploads/2017/01/home1-parallax-1.jpg',
   'https://barista.qodeinteractive.com/wp-content/uploads/2017/01/home-1-slider-img-2.jpg',
   'https://barista.qodeinteractive.com/wp-content/uploads/2017/01/home-1-slider.jpg',
   'https://barista.qodeinteractive.com/wp-content/uploads/2017/01/home-1-slider.jpg',
   'https://barista.qodeinteractive.com/wp-content/uploads/2017/01/home-1-slider-img-2.jpg',
   'https://barista.qodeinteractive.com/wp-content/uploads/2017/01/home1-parallax-1.jpg'];
 @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    themeState = Provider.of<ThemeState>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    CarouselSlider a = CarouselSlider(
      items: _list.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                child: Image.network(i,fit: BoxFit.cover,
                  height: 150.0,
                  width: double.infinity,),
            );
          },
        );
      }).toList(),
      height: 150,
      viewportFraction: 0.2,
      initialPage: _current,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 5),
      autoPlayAnimationDuration: Duration(milliseconds: 2000),
      autoPlayCurve: Curves.fastOutSlowIn,
      pauseAutoPlayOnTouch: Duration(seconds: 5),
      enlargeCenterPage: false,
      onPageChanged: (int value){
        setState(() {
          _current = value;
        });
      },
      scrollDirection: Axis.horizontal,
    );
    return Container(
      padding: EdgeInsets.only(top: themeState.spacingLarge, bottom: themeState.spacingMedium, left: themeState.spacingLarge, right: themeState.spacingLarge),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Text('Cửa Hàng', style: TextStyleOption.textCharcoalTitle(),),
          SizedBox(height: themeState.spacingLarge,),
          Container(
           height: 300,
            child: Row(
              children: <Widget>[
                 Flexible(
                   flex: 6,
                   child: Container(
                     color: AppColors.charcoal,
                     child: Column(
                       children: <Widget>[

                       ],
                     ),
                   ),
                 ),
                Flexible(
                  flex: 4,
                  child: Image.network('https://drive.google.com/open?id=1jhJqh-ZLohYb6OIvqfgoe-98p1zc5r8u'),
                )
              ],
            ),
          ),
          a,
        ],
      ),
    );
  }
}
