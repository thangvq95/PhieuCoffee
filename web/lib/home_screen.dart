import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/responsive.dart';
import 'components/top_bar_contents.dart';
import 'theme/theme.dart';
import 'ui/blog_section/blog_section.dart';
import 'ui/footer_section/footer_section.dart';
import 'ui/service_section/service_section.dart';
import 'ui/signature_section/signature_section.dart';
import 'ui/branch_section/branch_section.dart';
import 'ui/top_section/top_section.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  ThemeState themeState;
  ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }
  @override
  void didChangeDependencies() {
    themeState = Provider.of<ThemeState>(context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Stack(
      children: [
        Scaffold(
          extendBodyBehindAppBar: true,
          appBar: ResponsiveWidget.isSmallScreen(context) ?
          AppBar(
            backgroundColor: AppColors.businessBlack.withOpacity(_opacity),
            elevation: 0,
            centerTitle: true,
            actions: [

            ],
            title: Text(
              'Phiêu Cà Phê',
              style: TextStyle(
                color: Colors.blueGrey[100],
                fontSize: 20,
                fontFamily: 'Amita',
                fontWeight: FontWeight.w400,
                letterSpacing: 3,
              ),
            ),
          ) : PreferredSize(
            preferredSize: Size(screenSize.width, 48),
            child: TopBarContents(
              _opacity,
              homeCallback: (){
                _scrollController.animateTo(0.0, duration: Duration(milliseconds: 500), curve: Curves.bounceInOut);
              },
              aboutCallback: (){

              },
              contactCallback: (){
                _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 500), curve: Curves.bounceInOut);
              },
            ),
          ),
          body: SingleChildScrollView(
            controller: _scrollController,
            physics: ClampingScrollPhysics(),
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
        Positioned(
          top: 12.0,
          left: 28.0,
          child: Container(
            alignment: Alignment.center,
            child: IconStyleOption.imageAsset('assets/images/logo.png', height: 64, fit: BoxFit.fitHeight),
          ),
        ),
      ],
    );
  }



}

