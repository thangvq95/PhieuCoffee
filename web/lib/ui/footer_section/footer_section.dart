import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web/theme/theme.dart';
import 'dart:js' as js;

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
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://xtratheme.com/coffee/wp-content/uploads/sites/48/2018/05/footer.jpg'),
                  fit: BoxFit.cover,
                )
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.7).withAlpha(200),
            ),
          ),
          Positioned.fill(
            child: Container(
              width: double.infinity,
//              decoration: BoxDecoration(
//                  color: const Color(0x557c94b6),
//                image: DecorationImage(
//                  image: NetworkImage('https://xtratheme.com/coffee/wp-content/uploads/sites/48/2018/05/footer.jpg'),
//                  fit: BoxFit.cover,
//                  colorFilter:  ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
//                )
//              ),
              padding: EdgeInsets.symmetric(horizontal: themeState.spacingDefault).copyWith(top: themeState.spacingHuge),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: _buildContactInfo(),
                  ),
                  SizedBox(width: themeState.spacingDefault,),
                  Flexible(
                    flex: 1,
                    child: _buildWorkingHour(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Contact', style: TextStyleOption.textWhiteMedium2(fontFamily: FontFamily.Amita), ),
        SizedBox(height: themeState.spacingTiny,),
        Container(width: themeState.spacingLarge, height: 3.0, color: AppColors.blush,),
        SizedBox(height: themeState.spacingSmall,),
        contactItemRow('69/2 Tân Thới Nhì, Hóc Môn, Hồ Chí Minh', "assets/images/icon_facebook.png"),
        contactItemRow('0907 355 898 - 0932 659 300', "assets/images/icon_facebook.png"),
        contactItemRow('phieucaphe@gmail.com', "assets/images/icon_facebook.png", onTap: (){}),
        contactItemRow('Facebook', "assets/images/icon_facebook.png", onTap: (){
          js.context.callMethod("open", ["https://www.facebook.com/caphephieu"]);
        }),
        contactItemRow('Instagram', "assets/images/icon_instagram.png", onTap: (){
          js.context.callMethod("open", ["https:///www.instagram.com/phieucaphe"]);
        }),
      ],
    );
  }

  contactItemRow(String title, String image, {VoidCallback onTap}){
    return Container(
      margin: EdgeInsets.symmetric(vertical: themeState.spacingTiny),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
              child: IconStyleOption.imageAsset(image, color: Colors.brown, width: 22, height: 22),
            ),
          ),
          SizedBox(width: themeState.spacingSmall,),
          InkWell(
              onTap: onTap,
              child: Text(title, style: TextStyleOption.textWhiteBody1(fontFamily: FontFamily.Amita),))
        ],
      ),
    );
  }

  Widget _buildWorkingHour() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Working Hours', style: TextStyleOption.textWhiteMedium2(fontFamily: FontFamily.Amita),),
        SizedBox(height: themeState.spacingTiny,),
        Container(width: themeState.spacingLarge, height: 3.0, color: AppColors.blush,),
        SizedBox(height: themeState.spacingDefault,),
        Text('Monday to Sunday      6:00 - 21:30', style: TextStyleOption.textWhiteBody1(fontFamily: FontFamily.Amita),),
      ],
    );
  }
}
