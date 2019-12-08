import 'package:flutter/material.dart';
import 'package:phieucaphe/ui/component/image.dart';
import 'package:phieucaphe/ui/theme/app_decorator.dart';
import 'package:phieucaphe/ui/theme/theme_bloc.dart';
import 'package:phieucaphe/widgets/constant.dart';
import 'package:provider/provider.dart';

class GallerySection extends StatefulWidget {
  @override
  _GallerySectionState createState() => _GallerySectionState();
}

class _GallerySectionState extends State<GallerySection> {
  ThemeState themeState;
  @override
  void didChangeDependencies() {
    themeState = Provider.of<ThemeState>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text("What kind of Coffee we serve for you", style: TextStyleOption.textCharcoalBigSize(),),
          Text("Who are in extremely love with eco friendly system.", style: TextStyleOption.textCharcoalBody1()),
          SizedBox(height: themeState.spacingDefault,),
          Container(
            height: Constant.SIZE_HEIGHT_SECTION_DEFAULT,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(vertical: themeState.spacingLarge, horizontal: themeState.spacingPaddingHorizontal),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Flexible(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(themeState.cornerRadiusDefault)),
                          child: ImageUtils.imageCover("https://colorlib.com/preview/theme/coffee/img/g1.jpg",),
                        ),
                      ),
                      SizedBox(height: themeState.spacingDefault,),
                      Flexible(
                        flex: 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(themeState.cornerRadiusDefault)),
                          child: ImageUtils.imageCover("https://colorlib.com/preview/theme/coffee/img/g2.jpg",),
                        ),
                      ),
                    ],
                  ),
                  flex: 2,
                )  ,
                SizedBox(width: themeState.spacingDefault,),
                Flexible(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Flexible(
                        flex: 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(themeState.cornerRadiusDefault)),
                          child: ImageUtils.imageCover("https://colorlib.com/preview/theme/coffee/img/g3.jpg",),
                        ),
                      ),
                      SizedBox(height: themeState.spacingDefault,),
                      Flexible(
                          flex: 2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(themeState.cornerRadiusDefault)),
                                  child: ImageUtils.imageCover("https://colorlib.com/preview/theme/coffee/img/g4.jpg",),
                                ),
                              ),
                              SizedBox(width: themeState.spacingDefault,),
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(themeState.cornerRadiusDefault)),
                                  child: ImageUtils.imageCover("https://colorlib.com/preview/theme/coffee/img/g5.jpg",),
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
