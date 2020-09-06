import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web/theme/theme.dart';

class ServiceSection extends StatefulWidget {
  @override
  _ServiceSectionState createState() => _ServiceSectionState();
}

class _ServiceSectionState extends State<ServiceSection> {
  ThemeState themeState;

  @override
  void didChangeDependencies() {
    themeState = Provider.of<ThemeState>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 820,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.businessBlack,
        image: DecorationImage(
          image: NetworkImage('https://xtratheme.com/coffee/wp-content/uploads/sites/48/2018/05/par1.jpg'),
          fit: BoxFit.cover,
        )
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: themeState.spacingMedium,
            vertical: themeState.spacingMedium).copyWith(top: themeState.spacingHuge),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sản Phẩm Phiêu Cung Cấp Cho Bạn", style: TextStyleOption.textWhiteTitle()),
            SizedBox(height: themeState.spacingSmall),
            Text('Chất lượng là quan trọng nhất, nhưng bên cạnh đó Phiêu cũng đảm bảo sản phẩm hoàn toàn không có hóa chất và an toàn sức khỏe!', style: TextStyleOption.textWhiteBody1(offWhite: true),),
            SizedBox(height: themeState.spacingSmall),
            Container(width: themeState.spacingLarge, height: 4.0, color: AppColors.blush,),
            SizedBox(height: themeState.spacingMedium),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 380,
                    decoration: BoxDecoration(
                      borderRadius: themeState.borderRadiusMedium,
                      image: DecorationImage(
                        image: NetworkImage('https://xtratheme.com/coffee/wp-content/uploads/sites/48/2018/05/co2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: themeState.spacingMedium,),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildServiceComponent('High Quality Coffee', 'Pick Up The Best Product', 'assets/images/icon_coffee_beans.png'),
                              _buildServiceComponent('100% Pure Ceylon', 'The Single Origin Tea', 'assets/images/icon_coffee_cup.png'),
                              _buildServiceComponent('Cake Service', 'Celebrations And Parties', 'assets/images/icon_coffee_beans.png'),
                            ],
                          ),
                        ),
                        SizedBox(width: themeState.spacingDefault,),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildServiceComponent('Mordern Coffee Makers', 'Comfortable and Faster', 'assets/images/icon_coffee_machine.png'),
                              _buildServiceComponent('Grade 1 Coffee Beans', 'No Primary Defects, 0-3 Full Defects', 'assets/images/icon_coffee_bag.png'),
                              _buildServiceComponent('Coffee Chocolate', 'Perfectly Balanced Dark Chocolate', 'assets/images/icon_chocolate.png'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildServiceComponent(String title, String sub, String image){
    return Container(
      margin: EdgeInsets.symmetric(vertical: themeState.spacingDefault),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconStyleOption.imageAsset(image, color: Colors.white, width: 46, height: 46),
          SizedBox(width: themeState.spacingSmall,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                  maxLines: 2,
                  style: TextStyleOption.textWhiteMedium2(),),
                Text(sub,
                  maxLines: 2,
                  style: TextStyleOption.textWhiteBody1(offWhite: true),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
