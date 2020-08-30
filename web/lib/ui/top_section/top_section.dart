import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web/theme/theme.dart';
import 'package:web/ui/video_section/video_section.dart';

class TopSection extends StatefulWidget {
  @override
  _TopSectionState createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  ThemeState themeState;

  @override
  void didChangeDependencies() {
    themeState = Provider.of<ThemeState>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    double layoutProduct = 250 * 4 + themeState.spacingCustom * 8;
    double width = MediaQuery.of(context).size.width;

    return Material(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.95 +
            (width > layoutProduct ? 400 : 400 * 2) +
            themeState.spacingMedium +
            500,
        color: AppColors.greyBlue,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: IconStyleOption.imageAsset('assets/images/slider.jpg',
                  height: MediaQuery.of(context).size.height * 0.95,
                  fit: BoxFit.cover),
            ),
            Positioned(
                left: 0,
                right: 0,
                top: MediaQuery.of(context).size.height * 0.85,
                child: _buildCardProduct(width > layoutProduct)),
          ],
        ),
      ),
    );
  }

  _buildCardProduct(bool oneRow) {
    return Column(children: [
      if (oneRow)
        Padding(
          padding: EdgeInsets.symmetric(horizontal: themeState.spacingSmall),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductCard(
                title: 'Loai 1 - 250g',
                sub: 'Arabica 50% - Robusta 50%',
              ),
              ProductCard(
                title: 'Loai 2 - 250g',
                sub: 'Arabica 30% - Robusta 70%',
              ),
              ProductCard(
                title: 'Loai 1 - 500g',
                sub: 'Arabica 50% - Robusta 50%',
              ),
              ProductCard(
                title: 'Loai 2 - 500g',
                sub: 'Arabica 30% - Robusta 70%',
              ),
            ],
          ),
        )
      else ...[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: themeState.spacingSmall),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductCard(
                title: 'Loai 1 - 250g',
                sub: 'Arabica 50% - Robusta 50%',
              ),
              ProductCard(
                title: 'Loai 2 - 250g',
                sub: 'Arabica 30% - Robusta 70%',
              ),
            ],
          ),
        ),
        SizedBox(
          height: themeState.spacingSmall,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: themeState.spacingSmall),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductCard(
                title: 'Loai 1 - 500g',
                sub: 'Arabica 50% - Robusta 50%',
              ),
              ProductCard(
                title: 'Loai 2 - 500g',
                sub: 'Arabica 30% - Robusta 70%',
              ),
            ],
          ),
        )
      ],
      SizedBox(
        height: themeState.spacingMedium,
      ),
      VideoSection(),
    ]);
  }
}

class ProductCard extends StatefulWidget {
  final String title;
  final String sub;
  final VoidCallback onPressed;

  ProductCard({Key key, this.title, this.sub, this.onPressed})
      : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard>
    with SingleTickerProviderStateMixin {
  bool isHover = false;
  AnimationController animationController;
  final Tween<double> turnsTween = Tween<double>(
    begin: 1,
    end: 1.005,
  );

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<ThemeState>(context);
    return RotationTransition(
      turns: turnsTween.animate(animationController),
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHover = value;
          });
          if (isHover)
            animationController.forward();
          else
            animationController.reverse();
        },
        child: Container(
          height: 400,
          width: 250,
          margin: EdgeInsets.symmetric(horizontal: themeState.spacingCustom),
          decoration: BoxDecoration(
            borderRadius: themeState.borderRadiusMedium,
            image: DecorationImage(
              image: NetworkImage('https://xtratheme.com/coffee/wp-content/uploads/sites/48/2018/05/co2.jpg'),
              fit: BoxFit.cover,
            ),
            boxShadow: [if (isHover) themeState.kDefaultCardShadow],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: TextStyleOption.textWhiteTitle(
                    fontFamily: FontFamily.Amita),
              ),
              SizedBox(
                height: themeState.spacingSmall,
              ),
              Text(
                widget.sub,
                style: TextStyleOption.textWhiteBody1(offWhite: true),
              ),
              SizedBox(
                height: themeState.spacingSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
