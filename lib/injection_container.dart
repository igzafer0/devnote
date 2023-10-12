import 'package:devnote/config/navigation/navigation_route.dart';
import 'package:devnote/config/navigation/navigation_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void initInjection() {
  locator.registerSingleton(NavigationRoute());
  locator.registerSingleton(NavigationService());
}
