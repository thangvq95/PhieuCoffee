
import 'package:flutter/material.dart';
import 'package:phieucaphe/main.dart';

class Env{
  App app = App();

  Env() {
    _init();
  }

  Future _init() async {
    _registerProviders();
     runApp(app);
  }

  void _registerProviders(){

  }
}
