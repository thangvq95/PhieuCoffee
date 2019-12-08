
import 'package:flutter/material.dart';
import 'package:phieucaphe/ui/component/image.dart';
import 'package:phieucaphe/ui/theme/app_decorator.dart';
import 'package:phieucaphe/ui/theme/colors.dart';
import 'package:phieucaphe/ui/theme/theme_bloc.dart';
import 'package:provider/provider.dart';

class FooterSection extends StatefulWidget {
  @override
  _FooterSectionState createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  ThemeState themeState;
  @override
  void didChangeDependencies() {
    themeState = Provider.of<ThemeState>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned.fill(child: ImageUtils.imageCover("https://barista.edge-themes.com/wp-content/uploads/2017/02/footer-img.jpg")),
          Column(
            children: <Widget>[
              infoSection(),
              //footerInfoSection(),
            ],
          )
        ],
      ),
    );
  }

  infoSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: themeState.spacingLarge, vertical: themeState.spacingLarge),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("OPENING HOURS", style: TextStyleOption.textWhiteTitle().copyWith(fontWeight: FontWeight.w900),),
                  SizedBox(height: themeState.spacingLarge,),
                  itemHour("MONDAY", "__________", "6:30 - 22:00"),
                  itemHour("TUESDAY", "__________", "6:30 - 22:00"),
                  itemHour("WEDNESDAY", "_____", "6:30 - 22:00"),
                  itemHour("THURSDAY", "________", "6:30 - 22:00"),
                  itemHour("FRIDAY", "_____________", "6:30 - 22:00"),
                  itemHour("SATURDAY", "________", "6:30 - 22:00"),
                  itemHour("SUNDAY", "___________", "6:30 - 22:00")
                ],
              ),
            ),
          Flexible(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("CONTACT US", style: TextStyleOption.textWhiteTitle().copyWith(fontWeight: FontWeight.w900),),
                SizedBox(height: themeState.spacingLarge,),
                Text("phieucaphe@gmail.com", style: TextStyle(fontSize: 18, color: AppColors.blush),),
                SizedBox(height: themeState.spacingSmall,),
                Text("0932 659 300", style: TextStyleOption.textGrayFourBody1(),),
                SizedBox(height: themeState.spacingSmall,),
                Text("Giếng Nước, Hóc Môn, ", style: TextStyleOption.textGrayFourBody1(),),
                SizedBox(height: themeState.spacingSmall,),
                Text("Ho Chi Minh", style: TextStyleOption.textGrayFourBody1(),),
                SizedBox(height: themeState.spacingSmall,),
              ],
            ),
          )
        ],
      ),
    );
  }
  itemHour(String leftText,  String divider, String rightText){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: themeState.spacingTiny),
      child: Row(
        children: <Widget>[
          Text(leftText, style: TextStyleOption.textWhiteBody2(),),
          Text(divider, style: TextStyleOption.textWhiteBody1(),),
          Text(rightText, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: AppColors.blush),),
        ],
      ),
    );
  }

  Widget footerInfoSection() {
    return Container();
  }
}
