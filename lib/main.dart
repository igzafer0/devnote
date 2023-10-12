import 'package:flutter/material.dart';

import 'config/navigation/navigation_route.dart';
import 'config/navigation/navigation_service.dart';
import 'injection_container.dart';

void main() {
  initInjection();
  runApp(const DevNote());
}

class DevNote extends StatelessWidget {
  const DevNote({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: locator.get<NavigationRoute>().generateRoute,
      navigatorKey: locator.get<NavigationService>().navigatorKey,
    );
  }
}
