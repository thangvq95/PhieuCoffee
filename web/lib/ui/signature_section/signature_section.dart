import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web/theme/theme.dart';

class SignatureSection extends StatefulWidget {
  @override
  _SignatureSectionState createState() => _SignatureSectionState();
}

class _SignatureSectionState extends State<SignatureSection> {
  ThemeState themeState;
  @override
  void didChangeDependencies() {
    themeState = Provider.of<ThemeState>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
