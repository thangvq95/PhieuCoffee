import 'package:flutter/material.dart';
import 'package:phieucaphe/ui/screen/home/footer_section.dart';
import 'package:phieucaphe/ui/screen/home/gallery_screen.dart';
import 'package:phieucaphe/ui/screen/home/type_coffee_section.dart';
import 'package:phieucaphe/ui/screen/home/video_section.dart';
import 'extensions/hover_extensions.dart';
import 'ui/screen/home/store_section.dart';

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          VideoSection(),
          GallerySection(),
          StoreSection(),
          TypeCoffeeSection(),
          FooterSection()
        ],
      ),
    );
  }
}
