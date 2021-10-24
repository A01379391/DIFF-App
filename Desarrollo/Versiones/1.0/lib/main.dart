import 'package:dif/helpers/utils.dart';
import 'package:dif/pages/categorylistpage.dart';
import 'package:dif/pages/splashpage.dart';
import 'package:dif/pages/welcomepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(duration: 3, goToPage: WelcomePage())
  ));
}





