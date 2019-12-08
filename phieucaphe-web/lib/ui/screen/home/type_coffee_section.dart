import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:phieucaphe/ui/component/image.dart';
import 'package:phieucaphe/ui/theme/app_decorator.dart';
import 'package:phieucaphe/ui/theme/colors.dart';
import 'package:phieucaphe/ui/theme/theme_bloc.dart';
import 'package:phieucaphe/widgets/constant.dart';
import 'package:provider/provider.dart';

class TypeCoffeeSection extends StatefulWidget {
  @override
  _TypeCoffeeSectionState createState() => _TypeCoffeeSectionState();
}

class _TypeCoffeeSectionState extends State<TypeCoffeeSection> {
  ThemeState themeState;

  @override
  void didChangeDependencies() {
    themeState = Provider.of<ThemeState>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
            vertical: themeState.spacingLarge,
            horizontal: themeState.spacingPaddingHorizontal),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "What kind of Coffee we serve for you",
              style: TextStyleOption.textCharcoalBigSize(),
            ),
            SizedBox(
              height: themeState.spacingSmall,
            ),
            Text(
              "Who are in extremely love with eco friendly system.",
              style: TextStyleOption.textCharcoalBody1(),
            ),
            SizedBox(
              height: themeState.spacingLarge,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  itemColumn(
                      "https://colorlib.com/preview/theme/coffee/img/b1.jpg"),
                  SizedBox(
                    width: themeState.spacingLarge,
                  ),
                  itemColumn(
                      "https://colorlib.com/preview/theme/coffee/img/b2.jpg"),
                ],
              ),
            ),
          ],
        ));
  }

  Widget itemColumn(String urlImage) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(themeState.cornerRadiusDefault)),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(
                      Radius.circular(themeState.cornerRadiusDefault)),
                  child: ImageUtils.imageCover(urlImage))),
          SizedBox(
            height: themeState.spacingSmall,
          ),
          Row(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(themeState.spacingSmall),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(themeState.cornerRadiusDefault)),
                    border: Border.all(color: AppColors.silver),
                    color: AppColors.card,
                  ),
                  child: Text(
                    "Travel",
                    style: TextStyleOption.textCharcoalBody1(),
                  )),
              SizedBox(
                width: themeState.spacingTiny,
              ),
              Container(
                  padding: EdgeInsets.all(themeState.spacingSmall),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(themeState.cornerRadiusDefault)),
                    border: Border.all(color: AppColors.silver),
                    color: AppColors.card,
                  ),
                  child: Text(
                    "Life Style",
                    style: TextStyleOption.textCharcoalBody1(),
                  )),
            ],
          ),
          SizedBox(
            height: themeState.spacingDefault,
          ),
          Text(
            "Portable latest Fashion for young women",
            style: TextStyleOption.textCharcoalTitle(),
          ),
          SizedBox(
            height: themeState.spacingSmall,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.",
            style: TextStyleOption.textGrayFourBody1(),
          )
        ],
      ),
    );
  }
}
