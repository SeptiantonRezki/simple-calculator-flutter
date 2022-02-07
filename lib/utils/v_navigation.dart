import 'package:flutter/cupertino.dart';
import 'package:flutter_ssr_calculator/views/home.dart';
import 'package:flutter_ssr_calculator/views/settings.dart';

class VNavigation {
  static gotoNavigation(context) {
    return Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => const HomePage(),
        transitionDuration: Duration.zero,
      ),
    );
  }

  static gotoSettings(context) {
    return Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => const PageSettings(),
        transitionDuration: Duration.zero,
      ),
    );
  }
}
