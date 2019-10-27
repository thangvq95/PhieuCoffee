import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:flutter/material.dart';

class HandleCursor extends StatefulWidget {
  final Widget child;
  final VoidCallback onHover;
  final VoidCallback onExit;
  HandleCursor({this.child, this.onHover, this.onExit});

  @override
  _HandleCursorState createState() => _HandleCursorState();
}

class _HandleCursorState extends State<HandleCursor> {
  static final appContainer = html.window.document.getElementById('app-container');

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
    onHover: (PointerHoverEvent evt) {
      appContainer.style.cursor='pointer';
      widget.onHover();
    },
    onExit: (PointerExitEvent evt) {
      appContainer.style.cursor='default';
      widget.onExit();
    },
    child: widget.child
    );
  }
}

