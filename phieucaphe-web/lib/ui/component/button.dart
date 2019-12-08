import 'package:phieucaphe/ui/theme/theme_bloc.dart';
import 'package:phieucaphe/utils/handle_cursor.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class TextContainer extends StatefulWidget {
  final Widget child;
  final String text;
  final TextStyle style;
  final TextStyle styleHover;
  final VoidCallback onPressed;
  final EdgeInsets padding;
  final bool active;
  TextContainer({this.text, this.child, this.style, this.styleHover, this.onPressed, this.padding, this.active = false});

  @override
  _TextContainerHover createState() => _TextContainerHover();
}

class _TextContainerHover extends State<TextContainer> {
  bool hover = false;
  ThemeState theme;
  @override
  void didChangeDependencies() {
    theme = Provider.of<ThemeState>(context);
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return HandleCursor(
      onHover: (){
        setState(() {
          hover = true;
        });
      },
      onExit: (){
       setState(() {
         hover = false;
       });
      },
      child: GestureDetector(
          onTap: widget.onPressed,
          child: Padding(
            padding: widget.padding,
            child: Text(widget.text, style: hover || widget.active ? widget.styleHover : widget.style),
          )),
    );
  }
}
