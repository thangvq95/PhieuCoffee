import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web/components/indicator/indicator_primary.dart';
import 'package:web/models/branch.dart';
import 'package:web/theme/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_tags/flutter_tags.dart';

class BranchSection extends StatefulWidget {
  @override
  _BranchSectionState createState() => _BranchSectionState();
}

class _BranchSectionState extends State<BranchSection> {
  ThemeState themeState;
  int currentBranch = 0;
  int currentPage = 0;
  CarouselController carouselController = CarouselController();
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
    return Container(
      height: 720,
      width: double.infinity,
      color: AppColors.businessBlack,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: themeState.spacingMedium).copyWith(top: themeState.spacingHuge),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sale and Delivery Points", style: TextStyleOption.textWhiteTitle()),
                  SizedBox(height: themeState.spacingSmall),
                  Text('Where to buy our high quality coffee', style: TextStyleOption.textWhiteBody1(offWhite: true),),
                  SizedBox(height: themeState.spacingSmall),
                  Container(width: themeState.spacingLarge, height: 4.0, color: AppColors.blush,),
                  SizedBox(height: themeState.spacingMedium),
                  Text(''),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: themeState.borderRadiusDefault,
                    child: Container(
                      height: 400,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: CarouselSlider(
                              carouselController: carouselController,
                              options: CarouselOptions(
                                height: 400.0,
                                scrollPhysics: const NeverScrollableScrollPhysics(),
                                aspectRatio: 1.0,
                                viewportFraction: 1.0,
                                disableCenter: true,
                                enlargeCenterPage: false,
                                autoPlay: true,
                                initialPage: 0,
                                onPageChanged: (int index, _){
                                  setState(() {
                                    currentPage = index;
                                  });
                                }
                              ),
                              items: Branch.branch[currentBranch].urls.map((url) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      margin: EdgeInsets.symmetric(horizontal: themeState.spacingSmall),
                                      child: ClipRRect(
                                        borderRadius: themeState.borderRadiusDefault,
                                        child: Container(
                                            width: double.infinity,
                                            height: 400,
                                            child: Image.network(url, fit: BoxFit.cover,)
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }).toList(),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: EdgeInsets.only(bottom: themeState.spacingDefault),
                              child: IndicatorPrimary(
                                length: Branch.branch[currentBranch].urls.length,
                                currentIndex: currentPage,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: FlatButton(
                              onPressed: (){
                                carouselController.previousPage();
                              },
                              shape: const CircleBorder(),
                              child: IconStyleOption.iconWhiteAsset(Icons.chevron_left, size: 42),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: FlatButton(
                              onPressed: (){
                                carouselController.nextPage();
                              },
                              shape: const CircleBorder(),
                              child: IconStyleOption.iconWhiteAsset(Icons.chevron_right, size: 42),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: themeState.spacingDefault,),
                  Container(
                    child: Tags(
                      itemCount: Branch.branch.length,
                        // required
                      itemBuilder: (int index) {
                        Branch branch = Branch.branch[index];
                        return ItemTags(
                          key: Key(index.toString()),
                          index: index,
                          activeColor: AppColors.blush,
                          color: AppColors.offWhite,
                          title: branch.title,
                          singleItem: true,
                          active: currentBranch == index,
                          onPressed: (Item item){
                            if(currentBranch != item.index){
                              setState(() {
                                currentPage = 0;
                                currentBranch = item.index;
                              });
                            }
                          },
                        );
                      }
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
