import 'package:flutter/cupertino.dart';
import 'package:myportfolio/presentation/view/page/home_page/home_page.dart';

class AppRoutes {
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();

  String homepage = '/';

  Map<String, WidgetBuilder> allRoutes = {
    '/': (context) => const HomePage(),
  };
}
