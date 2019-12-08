import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ImageUtils {
  static Widget imageCover(String url) {
    return Image.network(
      url,
      key: ValueKey(Uuid().v4()),
      fit: BoxFit.cover,
    );
  }
}
