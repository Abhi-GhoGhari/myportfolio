import 'package:flutter/cupertino.dart';
import 'package:myportfolio/presentation/view/page/aboutme/aboutme.dart';
import 'package:myportfolio/presentation/view/page/contectus/contectus.dart';
import 'package:myportfolio/presentation/view/page/home_page/home_page.dart';

class AppRoutes {
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();

  String homepage = '/';
  String aboutme = 'aboutme';
  String contectus = 'contectus';

  Map<String, WidgetBuilder> allRoutes = {
    '/': (context) => const HomePage(),
    'aboutme': (context) => const Aboutme(),
    'contectus': (context) => const Contectus(),
  };
}
