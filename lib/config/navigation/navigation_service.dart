import 'package:flutter/widgets.dart';

abstract class INavigationService {
  Future<void> pop();
  Future<void> maybePop();
  Future<void> navigateToPage({required String path, Object? data});
  Future<void> navigateToPagePop({required String path, Object? data});
  Future<void> navigateToPageClear({required String path, Object? data});
}

class NavigationService implements INavigationService {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  bool removeAllOldRoutes(Route<dynamic> route) => false;

  @override
  Future<void> navigateToPage({required String path, Object? data}) async {
    await navigatorKey.currentState!.pushNamed(path, arguments: data);
  }

  @override
  Future<void> navigateToPageClear({required String path, Object? data}) async {
    await navigatorKey.currentState!.pushNamedAndRemoveUntil(path, removeAllOldRoutes, arguments: data);
  }

  @override
  Future<void> navigateToPagePop({required String path, Object? data}) async {
    await navigatorKey.currentState!.popAndPushNamed(path, arguments: data);
  }

  @override
  Future<void> pop({Object? data}) async {
    navigatorKey.currentState!.pop(data);
  }

  @override
  Future<void> maybePop() async {
    navigatorKey.currentState!.maybePop();
  }
}
