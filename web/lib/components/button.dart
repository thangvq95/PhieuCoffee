import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  final VoidCallback onTap;
  final Widget child;

  const HoverButton({Key key, this.onTap, this.child}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<HoverButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      onTap: widget.onTap,
      child: widget.child,
    );
  }
}
