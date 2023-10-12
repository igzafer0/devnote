import 'package:devnote/presentation/view/home/view/home_view.dart';
import 'package:flutter/material.dart';

import '../../util/constant/navigation_constant.dart';

class NavigationRoute {
  Route<dynamic> generateRoute(RouteSettings args) {
    return switch (args.name) {
      NavigationConstant.DEFAULT => normalNavigate(const HomeView(), NavigationConstant.DEFAULT),
      /* 404 PAGE */
      _ => MaterialPageRoute(builder: (context) => const SizedBox())
      /* */
    };
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }
}
